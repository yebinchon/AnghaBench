
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* io_channel ;
typedef int errcode_t ;
struct TYPE_3__ {size_t block_size; int align; } ;


 int ext2fs_get_mem (size_t,void*) ;
 int ext2fs_get_memalign (size_t,int ,void*) ;

errcode_t io_channel_alloc_buf(io_channel io, int count, void *ptr)
{
 size_t size;

 if (count == 0)
  size = io->block_size;
 else if (count > 0)
  size = io->block_size * count;
 else
  size = -count;

 if (io->align)
  return ext2fs_get_memalign(size, io->align, ptr);
 else
  return ext2fs_get_mem(size, ptr);
}
