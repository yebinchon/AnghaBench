
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_FALSE ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_POOL_REOPEN ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_pool_reopen(const char *pool)
{
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_boolean_value(optional, "scrub_restart", B_FALSE);

 IOC_INPUT_TEST(ZFS_IOC_POOL_REOPEN, pool, ((void*)0), optional, 0);

 nvlist_free(optional);
}
