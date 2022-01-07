
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_set_free_with_hash_ops () ;
 int test_set_put () ;
 int test_set_put_string_set () ;
 int test_set_steal_first () ;

int main(int argc, const char *argv[]) {
        test_set_steal_first();
        test_set_free_with_hash_ops();
        test_set_put();
        test_set_put_string_set();

        return 0;
}
