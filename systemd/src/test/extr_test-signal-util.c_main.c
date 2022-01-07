
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_block_signals () ;
 int test_ignore_signals () ;
 int test_rt_signals () ;
 int test_signal_from_string () ;

int main(int argc, char *argv[]) {
        test_rt_signals();
        test_signal_from_string();
        test_block_signals();
        test_ignore_signals();

        return 0;
}
