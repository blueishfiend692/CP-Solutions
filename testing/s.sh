for((i = 1; ; ++i)); do
    echo $i
    ./gen $i > in
    ./a < in > out1
    ./brute < in > out2
    diff -w out1 out2 || break
    # diff -w <(./a < in) <(./brute < in) || break
done
