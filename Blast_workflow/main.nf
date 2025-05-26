#!/usr/bin/env nextflow
nextflow.enable.dsl=2

params.query   = "$PWD/input.fasta"
params.dbDir   = "$PWD/DB"
params.dbName  = "blastDB"
params.threads = 2
params.outdir  = "$PWD"

process runBlast {
    input:
    path query_file

    output:
    path "input.blastout"

    script:
    """
    blastn -num_threads ${params.threads} \
           -db ${params.dbDir}/${params.dbName} \
           -query ${query_file} \
           -outfmt 6 \
           -out input.blastout
    """
}

workflow {
    println "\nI want to BLAST ${params.query} to ${params.dbDir}/${params.dbName} using ${params.threads} CPUs and output it to ${params.outdir}\n"

    Channel.fromPath(params.query)
           .set { query_ch }

    runBlast(query_ch)
}
