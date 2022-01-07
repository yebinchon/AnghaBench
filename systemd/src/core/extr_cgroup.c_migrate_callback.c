
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGroupMask ;


 char const* unit_get_realized_cgroup_path (void*,int ) ;

__attribute__((used)) static const char *migrate_callback(CGroupMask mask, void *userdata) {
        return unit_get_realized_cgroup_path(userdata, mask);
}
