
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGroupMask ;
typedef scalar_t__ CGroupController ;


 int CGROUP_CONTROLLER_TO_MASK (scalar_t__) ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 int assert_se (int) ;
 scalar_t__ cg_mask_supported (int*) ;
 char* cgroup_controller_to_string (scalar_t__) ;
 int printf (char*,char*,char*) ;
 char* yes_no (int) ;

__attribute__((used)) static void test_mask_supported(void) {

        CGroupMask m;
        CGroupController c;

        assert_se(cg_mask_supported(&m) >= 0);

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++)
                printf("'%s' is supported: %s\n", cgroup_controller_to_string(c), yes_no(m & CGROUP_CONTROLLER_TO_MASK(c)));
}
