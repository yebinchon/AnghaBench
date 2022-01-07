
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_WAIT ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_wait(const char *pool)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_int32(required, "wait_activity", 2);
 fnvlist_add_uint64(optional, "wait_tag", 0xdeadbeefdeadbeef);

 IOC_INPUT_TEST(ZFS_IOC_WAIT, pool, required, optional, EINVAL);

 nvlist_free(required);
 nvlist_free(optional);
}
