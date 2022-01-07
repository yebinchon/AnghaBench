
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int LOG_DEBUG ;
 int test_copy_atomic () ;
 int test_copy_bytes () ;
 int test_copy_bytes_regular_file (char*,int,int) ;
 int test_copy_file () ;
 int test_copy_file_fd () ;
 int test_copy_tree () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_copy_file();
        test_copy_file_fd();
        test_copy_tree();
        test_copy_bytes();
        test_copy_bytes_regular_file(argv[0], 0, (uint64_t) -1);
        test_copy_bytes_regular_file(argv[0], 1, (uint64_t) -1);
        test_copy_bytes_regular_file(argv[0], 0, 1000);
        test_copy_bytes_regular_file(argv[0], 1, 1000);
        test_copy_bytes_regular_file(argv[0], 0, 32000);
        test_copy_bytes_regular_file(argv[0], 1, 32000);
        test_copy_atomic();

        return 0;
}
