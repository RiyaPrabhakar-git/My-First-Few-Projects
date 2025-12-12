def calculate_gc_content(seq):
    seq = seq.upper()
    valid_bases = {"A", "T", "G", "C"}

    # Filter invalid characters
    clean_seq = "".join([base for base in seq if base in valid_bases])

    if len(clean_seq) == 0:
        return "Error: No valid DNA bases found."

    gc_count = clean_seq.count("G") + clean_seq.count("C")
    gc_content = (gc_count / len(clean_seq)) * 100

    return round(gc_content, 2)

if __name__ == "__main__":
    sequence = input("Enter a DNA sequence: ")
    result = calculate_gc_content(sequence)
    print("GC Content (%):", result)
