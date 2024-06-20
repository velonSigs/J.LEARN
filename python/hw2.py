try:
    N = int(input())
    i = 0
    while i < N:
      a,b = input().split()
      print(int(a) + int(b))
      i = i + 1
except:

    print("error")

