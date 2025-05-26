# A Small Demo for Running Blast using Nexflow

## Directory Structure

```
workdir/
├── input.fasta		# Input fasta file
├── main.nf		# Nextflow script
├── DB/                 # Blast database
└── work/		# Output directory
```

## Getting Started

```sh
cd YourProjectDirectory # go to your working directory


# Clone the repository
git clone https://github.com/darshana2509/Nextflow.git

# Make all scripts accessible
chmod -R 755 Pipeline16s
```


## Pipeline Execution

```sh
# Run the nextflow script (Provided nextflow is already installed in ypur system)
nextflow run main.nf
```

This step will:
- Run Blast on input.fasta file using databse stored in DB/ directory.
- A new directory will be created work/ which will store the output result of the Blast


## Using Your Own D
- Replace input.fasta file with your data.
- Users can also add their own custom Blast database in the DB/ directory
- Once the data is prepared, use the same command to run the nextflow 
```sh
nextflow run main.nf
```
