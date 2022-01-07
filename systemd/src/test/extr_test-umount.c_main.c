
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_mount_points_list (char*) ;
 int test_setup_logging (int ) ;
 int test_swap_list (char*) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_mount_points_list(((void*)0));
        test_mount_points_list("/test-umount/empty.mountinfo");
        test_mount_points_list("/test-umount/garbled.mountinfo");
        test_mount_points_list("/test-umount/rhbug-1554943.mountinfo");

        test_swap_list(((void*)0));
        test_swap_list("/test-umount/example.swaps");
}
