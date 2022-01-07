
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST_WILD (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_RELEASE ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,char const*,int *) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_release(const char *pool, const char *snapshot)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *release = fnvlist_alloc();

 fnvlist_add_boolean(release, "libzfs_check_hold");
 fnvlist_add_nvlist(required, snapshot, release);

 IOC_INPUT_TEST_WILD(ZFS_IOC_RELEASE, pool, required, ((void*)0), 0);

 nvlist_free(release);
 nvlist_free(required);
}
