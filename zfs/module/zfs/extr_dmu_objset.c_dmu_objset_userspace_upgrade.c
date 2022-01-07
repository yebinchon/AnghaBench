
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int os_flags; } ;
typedef TYPE_1__ objset_t ;


 int EINVAL ;
 int ENOTSUP ;
 int OBJSET_FLAG_USERACCOUNTING_COMPLETE ;
 int SET_ERROR (int ) ;
 scalar_t__ dmu_objset_is_snapshot (TYPE_1__*) ;
 int dmu_objset_pool (TYPE_1__*) ;
 int dmu_objset_space_upgrade (TYPE_1__*) ;
 scalar_t__ dmu_objset_userspace_present (TYPE_1__*) ;
 int dmu_objset_userused_enabled (TYPE_1__*) ;
 int txg_wait_synced (int ,int ) ;

int
dmu_objset_userspace_upgrade(objset_t *os)
{
 int err = 0;

 if (dmu_objset_userspace_present(os))
  return (0);
 if (dmu_objset_is_snapshot(os))
  return (SET_ERROR(EINVAL));
 if (!dmu_objset_userused_enabled(os))
  return (SET_ERROR(ENOTSUP));

 err = dmu_objset_space_upgrade(os);
 if (err)
  return (err);

 os->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
 txg_wait_synced(dmu_objset_pool(os), 0);
 return (0);
}
