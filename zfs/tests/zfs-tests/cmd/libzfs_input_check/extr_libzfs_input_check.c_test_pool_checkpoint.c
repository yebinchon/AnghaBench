
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_POOL_CHECKPOINT ;

__attribute__((used)) static void
test_pool_checkpoint(const char *pool)
{
 IOC_INPUT_TEST(ZFS_IOC_POOL_CHECKPOINT, pool, ((void*)0), ((void*)0), 0);
}
