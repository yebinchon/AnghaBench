
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_info (char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int test_hashmap_funcs () ;
 int test_iterated_cache () ;
 int test_ordered_hashmap_funcs () ;
 int test_ordered_hashmap_next () ;
 int test_string_compare_func () ;
 int test_trivial_compare_func () ;
 int test_uint64_compare_func () ;

int main(int argc, const char *argv[]) {




        log_parse_environment();
        log_open();

        test_hashmap_funcs();
        test_ordered_hashmap_funcs();

        log_info("/************ non-shared tests ************/");

        test_ordered_hashmap_next();
        test_uint64_compare_func();
        test_trivial_compare_func();
        test_string_compare_func();
        test_iterated_cache();

        return 0;
}
