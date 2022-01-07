
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_TRUE ;
 int EINVAL ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 unsigned long long POOL_TRIM_START ;
 int ZFS_IOC_POOL_TRIM ;
 char* ZPOOL_TRIM_COMMAND ;
 char* ZPOOL_TRIM_RATE ;
 int ZPOOL_TRIM_SECURE ;
 int ZPOOL_TRIM_VDEVS ;
 int fnvlist_add_boolean_value (int *,int ,int ) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_uint64 (int *,char*,unsigned long long) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_vdev_trim(const char *pool)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();
 nvlist_t *vdev_guids = fnvlist_alloc();

 fnvlist_add_uint64(vdev_guids, "path", 0xdeadbeefdeadbeef);
 fnvlist_add_uint64(required, ZPOOL_TRIM_COMMAND, POOL_TRIM_START);
 fnvlist_add_nvlist(required, ZPOOL_TRIM_VDEVS, vdev_guids);
 fnvlist_add_uint64(optional, ZPOOL_TRIM_RATE, 1ULL << 30);
 fnvlist_add_boolean_value(optional, ZPOOL_TRIM_SECURE, B_TRUE);

 IOC_INPUT_TEST(ZFS_IOC_POOL_TRIM, pool, required, optional, EINVAL);
 nvlist_free(vdev_guids);
 nvlist_free(optional);
 nvlist_free(required);
}
