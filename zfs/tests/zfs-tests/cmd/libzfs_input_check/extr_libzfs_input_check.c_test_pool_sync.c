
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_TRUE ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_POOL_SYNC ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_pool_sync(const char *pool)
{
 nvlist_t *required = fnvlist_alloc();

 fnvlist_add_boolean_value(required, "force", B_TRUE);

 IOC_INPUT_TEST(ZFS_IOC_POOL_SYNC, pool, required, ((void*)0), 0);

 nvlist_free(required);
}
