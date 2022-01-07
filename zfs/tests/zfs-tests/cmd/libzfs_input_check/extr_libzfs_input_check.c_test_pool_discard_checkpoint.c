
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_IOC_POOL_DISCARD_CHECKPOINT ;
 int lzc_pool_checkpoint (char const*) ;

__attribute__((used)) static void
test_pool_discard_checkpoint(const char *pool)
{
 int err = lzc_pool_checkpoint(pool);
 if (err == 0 || err == ZFS_ERR_CHECKPOINT_EXISTS)
  IOC_INPUT_TEST(ZFS_IOC_POOL_DISCARD_CHECKPOINT, pool, ((void*)0),
      ((void*)0), 0);
}
