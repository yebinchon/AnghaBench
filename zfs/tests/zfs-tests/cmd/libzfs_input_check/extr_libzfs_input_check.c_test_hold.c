
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_HOLD ;
 int fnvlist_add_int32 (int *,char*,int ) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char const*,char*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 int zfs_fd ;

__attribute__((used)) static void
test_hold(const char *pool, const char *snapshot)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();
 nvlist_t *holds = fnvlist_alloc();

 fnvlist_add_string(holds, snapshot, "libzfs_check_hold");
 fnvlist_add_nvlist(required, "holds", holds);
 fnvlist_add_int32(optional, "cleanup_fd", zfs_fd);

 IOC_INPUT_TEST(ZFS_IOC_HOLD, pool, required, optional, 0);

 nvlist_free(holds);
 nvlist_free(optional);
 nvlist_free(required);
}
