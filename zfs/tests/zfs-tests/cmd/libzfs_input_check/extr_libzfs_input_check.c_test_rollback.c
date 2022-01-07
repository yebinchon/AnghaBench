
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_FALSE ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_ROLLBACK ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_rollback(const char *dataset, const char *snapshot)
{
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_string(optional, "target", snapshot);

 IOC_INPUT_TEST(ZFS_IOC_ROLLBACK, dataset, ((void*)0), optional, B_FALSE);

 nvlist_free(optional);
}
