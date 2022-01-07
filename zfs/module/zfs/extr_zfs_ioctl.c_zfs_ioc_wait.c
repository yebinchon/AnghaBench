
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int int32_t ;
typedef int boolean_t ;


 int EINVAL ;
 int ZPOOL_WAIT_ACTIVITY ;
 int ZPOOL_WAIT_TAG ;
 int ZPOOL_WAIT_WAITED ;
 int fnvlist_add_boolean_value (int *,int ,int ) ;
 scalar_t__ nvlist_lookup_int32 (int *,int ,int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int spa_wait (char const*,int ,int *) ;
 int spa_wait_tag (char const*,int ,int ,int *) ;

__attribute__((used)) static int
zfs_ioc_wait(const char *name, nvlist_t *innvl, nvlist_t *outnvl)
{
 int32_t activity;
 uint64_t tag;
 boolean_t waited;
 int error;

 if (nvlist_lookup_int32(innvl, ZPOOL_WAIT_ACTIVITY, &activity) != 0)
  return (EINVAL);

 if (nvlist_lookup_uint64(innvl, ZPOOL_WAIT_TAG, &tag) == 0)
  error = spa_wait_tag(name, activity, tag, &waited);
 else
  error = spa_wait(name, activity, &waited);

 if (error == 0)
  fnvlist_add_boolean_value(outnvl, ZPOOL_WAIT_WAITED, waited);

 return (error);
}
