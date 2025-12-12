calculate_gc_content <- function(seq) {
  seq <- toupper(seq)
  valid <- c("A", "T", "G", "C")
  
  clean_seq <- seq[seq %in% valid]
  
  if (length(clean_seq) == 0) {
    return("Error: No valid DNA bases found.")
  }
  
  gc_count <- sum(clean_seq == "G" | clean_seq == "C")
  gc_content <- (gc_count / length(clean_seq)) * 100
  
  return(round(gc_content, 2))
}

sequence <- strsplit(readline("Enter a DNA sequence: "), "")[[1]]
result <- calculate_gc_content(sequence)
cat("GC Content (%):", result, "\n")
