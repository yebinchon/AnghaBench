
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fdset_cloexec () ;
 int test_fdset_close_others () ;
 int test_fdset_isempty () ;
 int test_fdset_iterate () ;
 int test_fdset_new_array () ;
 int test_fdset_new_fill () ;
 int test_fdset_put_dup () ;
 int test_fdset_remove () ;
 int test_fdset_steal_first () ;

int main(int argc, char *argv[]) {
        test_fdset_new_fill();
        test_fdset_put_dup();
        test_fdset_cloexec();
        test_fdset_close_others();
        test_fdset_remove();
        test_fdset_iterate();
        test_fdset_isempty();
        test_fdset_steal_first();
        test_fdset_new_array();

        return 0;
}
