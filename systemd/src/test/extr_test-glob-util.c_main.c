
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_glob_exists () ;
 int test_glob_no_dot () ;
 int test_safe_glob () ;

int main(void) {
        test_glob_exists();
        test_glob_no_dot();
        test_safe_glob();

        return 0;
}
