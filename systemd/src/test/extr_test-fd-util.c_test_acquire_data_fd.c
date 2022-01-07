
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACQUIRE_NO_DEV_NULL ;
 int ACQUIRE_NO_MEMFD ;
 int ACQUIRE_NO_PIPE ;
 int ACQUIRE_NO_TMPFILE ;
 int test_acquire_data_fd_one (int) ;

__attribute__((used)) static void test_acquire_data_fd(void) {

        test_acquire_data_fd_one(0);
        test_acquire_data_fd_one(ACQUIRE_NO_DEV_NULL);
        test_acquire_data_fd_one(ACQUIRE_NO_MEMFD);
        test_acquire_data_fd_one(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD);
        test_acquire_data_fd_one(ACQUIRE_NO_PIPE);
        test_acquire_data_fd_one(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_PIPE);
        test_acquire_data_fd_one(ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE);
        test_acquire_data_fd_one(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE);
        test_acquire_data_fd_one(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE|ACQUIRE_NO_TMPFILE);
}
