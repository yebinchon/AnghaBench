
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_wait_activity_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int ZFS_IOC_WAIT ;
 int ZPOOL_WAIT_ACTIVITY ;
 int ZPOOL_WAIT_TAG ;
 int ZPOOL_WAIT_WAITED ;
 int fnvlist_add_int32 (int *,int ,int ) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ fnvlist_lookup_boolean_value (int *,int ) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

__attribute__((used)) static int
wait_common(const char *pool, zpool_wait_activity_t activity, boolean_t use_tag,
    uint64_t tag, boolean_t *waited)
{
 nvlist_t *args = fnvlist_alloc();
 nvlist_t *result = ((void*)0);

 fnvlist_add_int32(args, ZPOOL_WAIT_ACTIVITY, activity);
 if (use_tag)
  fnvlist_add_uint64(args, ZPOOL_WAIT_TAG, tag);

 int error = lzc_ioctl(ZFS_IOC_WAIT, pool, args, &result);

 if (error == 0 && waited != ((void*)0))
  *waited = fnvlist_lookup_boolean_value(result,
      ZPOOL_WAIT_WAITED);

 fnvlist_free(args);
 fnvlist_free(result);

 return (error);
}
