
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_mapping_table () ;
 int test_errno_mapping_custom () ;
 int test_errno_mapping_standard () ;
 int test_error () ;

int main(int argc, char *argv[]) {
        dump_mapping_table();

        test_error();
        test_errno_mapping_standard();
        test_errno_mapping_custom();

        return 0;
}
