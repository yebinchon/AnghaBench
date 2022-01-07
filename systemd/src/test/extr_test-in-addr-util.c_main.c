
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_in_addr_prefix_from_string () ;
 int test_in_addr_prefix_to_string () ;
 int test_in_addr_random_prefix () ;

int main(int argc, char *argv[]) {
        test_in_addr_prefix_from_string();
        test_in_addr_random_prefix();
        test_in_addr_prefix_to_string();

        return 0;
}
