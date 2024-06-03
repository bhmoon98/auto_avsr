import os

def split_filelist(input_file, num_splits=100):
    # Create directory if it does not exist
    if not os.path.exists('filelist'):
        os.makedirs('filelist')

    with open(input_file, 'r') as f:
        lines = f.readlines()
    
    total_files = len(lines)
    chunk_size = total_files // num_splits + (1 if total_files % num_splits != 0 else 0)
    
    for i in range(num_splits):
        start_idx = i * chunk_size
        end_idx = start_idx + chunk_size
        chunk = lines[start_idx:end_idx]
        output_file = os.path.join('filelist', f'filelist{i:03d}.txt')
        with open(output_file, 'w') as out_f:
            out_f.writelines(chunk)
        print(f'Created {output_file} with {len(chunk)} entries')

# Example usage
input_file = 'filelist.txt'
split_filelist(input_file)
