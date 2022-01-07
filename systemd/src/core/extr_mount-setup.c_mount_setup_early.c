
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ELEMENTSOF (int ) ;
 scalar_t__ N_EARLY_MOUNT ;
 int assert_cc (int) ;
 int mount_points_setup (scalar_t__,int) ;
 int mount_table ;

int mount_setup_early(void) {
        assert_cc(N_EARLY_MOUNT <= ELEMENTSOF(mount_table));



        return mount_points_setup(N_EARLY_MOUNT, 0);
}
