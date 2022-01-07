
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_acquire_data_fd () ;
 int test_close_many () ;
 int test_close_nointr () ;
 int test_fd_duplicate_data_fd () ;
 int test_fd_move_above_stdio () ;
 int test_open_serialization_fd () ;
 int test_read_nr_open () ;
 int test_rearrange_stdio () ;
 int test_same_fd () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {

        test_setup_logging(LOG_DEBUG);

        test_close_many();
        test_close_nointr();
        test_same_fd();
        test_open_serialization_fd();
        test_acquire_data_fd();
        test_fd_move_above_stdio();
        test_rearrange_stdio();
        test_fd_duplicate_data_fd();
        test_read_nr_open();

        return 0;
}
