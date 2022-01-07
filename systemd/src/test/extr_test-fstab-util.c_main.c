
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_fstab_filter_options () ;
 int test_fstab_find_pri () ;
 int test_fstab_node_to_udev_node () ;
 int test_fstab_yes_no_option () ;

int main(void) {
        test_fstab_filter_options();
        test_fstab_find_pri();
        test_fstab_yes_no_option();
        test_fstab_node_to_udev_node();

        return 0;
}
