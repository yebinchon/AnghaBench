
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_sd_event_code_migration () ;
 int test_strpcpy () ;
 int test_strpcpyf () ;
 int test_strpcpyl () ;
 int test_strscpy () ;
 int test_strscpyl () ;

int main(int argc, char *argv[]) {
        test_strpcpy();
        test_strpcpyf();
        test_strpcpyl();
        test_strscpy();
        test_strscpyl();

        test_sd_event_code_migration();

        return 0;
}
