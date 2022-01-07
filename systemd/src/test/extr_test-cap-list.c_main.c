
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_cap_list () ;
 int test_capability_set () ;

int main(int argc, char *argv[]) {
        test_cap_list();
        test_capability_set();

        return 0;
}
