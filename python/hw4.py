import math
while True:
    num_list = input().split()
    n = int(num_list[0])
    if(n == 0):
        print("error")
        break
    nums = list(map(int,num_list[1:]))
    total = sum(nums)
    print(total)
    print()
