
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_SPACE_SNAPS ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_space_snaps(const char *snapshot)
{
 nvlist_t *required = fnvlist_alloc();
 fnvlist_add_string(required, "firstsnap", snapshot);

 IOC_INPUT_TEST(ZFS_IOC_SPACE_SNAPS, snapshot, required, ((void*)0), 0);

 nvlist_free(required);
}
