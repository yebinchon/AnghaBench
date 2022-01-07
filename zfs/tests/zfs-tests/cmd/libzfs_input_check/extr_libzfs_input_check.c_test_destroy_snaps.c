
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_DESTROY_SNAPS ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_destroy_snaps(const char *pool, const char *snapshot)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *snaps = fnvlist_alloc();

 fnvlist_add_boolean(snaps, snapshot);
 fnvlist_add_nvlist(required, "snaps", snaps);

 IOC_INPUT_TEST(ZFS_IOC_DESTROY_SNAPS, pool, required, ((void*)0), 0);

 nvlist_free(snaps);
 nvlist_free(required);
}
