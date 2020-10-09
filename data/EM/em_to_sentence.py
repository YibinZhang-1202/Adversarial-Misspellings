import pandas as pd
import os

PATH = 'datasets/structured_beer'
INPUT = 'test.csv'
OUTPUT = 'test_scrnn.txt'

out_f = open(os.path.join(PATH,OUTPUT), 'w')
dataset = pd.read_csv(os.path.join(PATH,INPUT))
fields = dataset.columns[2:]

for index, row in dataset.iterrows():
    left_line = ""
    right_line = ""
    for field in fields:
        if field.startswith('left_'):
            left_line = left_line + row[field] + ' , '
        elif field.startswith('right_'):
            right_line = right_line + row[field] + ' , '

    left_line = left_line[0:-3]
    right_line = right_line[0:-3]
    out_f.write(left_line+'\n')
    out_f.write(right_line+'\n')
    print(left_line)
    print(right_line)
    print()

out_f.close()
