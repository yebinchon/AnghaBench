
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_GREEDY_REALLOC () ;
 int test_alloca () ;
 int test_auto_erase_memory () ;
 int test_bool_assign () ;
 int test_cleanup_order () ;
 int test_memdup_multiply_and_greedy_realloc () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_alloca();
        test_GREEDY_REALLOC();
        test_memdup_multiply_and_greedy_realloc();
        test_bool_assign();
        test_cleanup_order();
        test_auto_erase_memory();

        return 0;
}
