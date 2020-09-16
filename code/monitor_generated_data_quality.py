import sys, os

signals_dir = "/Users/yantinghuang/Study/tandem_repeats_finder/test_sim/signal"
signal_start_ind = 1
signal_end_ind = 99

signal_length_lst = []
for i in range(signal_start_ind, signal_end_ind):
	signal_fn = os.path.join(signals_dir, f"signal_{i}.txt")
	signal_df = pd.read_csv(signal_fn, names=['signal'])
	signal_length_lst.append(len(signal_df))
print("mean length:")
print(sum(signal_length_lst)/len(signal_length_lst))