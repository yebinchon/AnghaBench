
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef void* uint32_t ;
typedef scalar_t__ buf ;


 int ASSERT0 (size_t) ;
 void* zfs_initialize_value ;

__attribute__((used)) static int
vdev_initialize_block_fill(void *buf, size_t len, void *unused)
{
 ASSERT0(len % sizeof (uint64_t));





 for (uint64_t i = 0; i < len; i += sizeof (uint64_t)) {
  *(uint64_t *)((char *)(buf) + i) = zfs_initialize_value;
 }

 return (0);
}
