library(BSgenome.Hsapiens.UCSC.hg38)
library(org.Hs.eg.db)

output.fasta.dir <- "/Users/yantinghuang/Study/tandem_repeats_finder/sim_seqs"
output.fasta.fn <- file.path(output.fasta.dir, "repeat_region.fasta")
# start, end both inclusive
curr.chrom.genome <- Hsapiens[[chrom]]
chrom = "chr1"
start = 10694586
end = 10694621
sim.region <- curr.chrom.genome[(start-1500):(end+1500)]

# write to the file
writeLines(c('>repeat_region_1', as.character(sim.region)), output.fasta.fn)





