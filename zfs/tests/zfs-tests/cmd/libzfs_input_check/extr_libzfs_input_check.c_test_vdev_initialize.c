
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int POOL_INITIALIZE_START ;
 int ZFS_IOC_POOL_INITIALIZE ;
 char* ZPOOL_INITIALIZE_COMMAND ;
 int ZPOOL_INITIALIZE_VDEVS ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_vdev_initialize(const char *pool)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *vdev_guids = fnvlist_alloc();

 fnvlist_add_uint64(vdev_guids, "path", 0xdeadbeefdeadbeef);
 fnvlist_add_uint64(required, ZPOOL_INITIALIZE_COMMAND,
     POOL_INITIALIZE_START);
 fnvlist_add_nvlist(required, ZPOOL_INITIALIZE_VDEVS, vdev_guids);

 IOC_INPUT_TEST(ZFS_IOC_POOL_INITIALIZE, pool, required, ((void*)0), EINVAL);
 nvlist_free(vdev_guids);
 nvlist_free(required);
}
