
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_3__ {int blocksize; int io; } ;


 scalar_t__ EXT2_ET_NO_MEMORY ;
 int MAX_STRIDE_LENGTH ;
 int free (void*) ;
 scalar_t__ io_channel_write_blk64 (int ,int,int,void*) ;
 scalar_t__ io_channel_zeroout (int ,int,int) ;
 int memset (void*,int ,int) ;
 void* realloc (void*,int) ;

errcode_t ext2fs_zero_blocks2(ext2_filsys fs, blk64_t blk, int num,
         blk64_t *ret_blk, int *ret_count)
{
 int j, count;
 static void *buf;
 static int stride_length = 0;
 errcode_t retval;


 if (!fs) {
  if (buf) {
   free(buf);
   buf = 0;
   stride_length = 0;
  }
  return 0;
 }


 if (num <= 0)
  return 0;


 retval = io_channel_zeroout(fs->io, blk, num);
 if (retval == 0)
  return 0;


 if (num > stride_length && stride_length < MAX_STRIDE_LENGTH) {
  void *p;
  int new_stride = num;

  if (new_stride > MAX_STRIDE_LENGTH)
   new_stride = MAX_STRIDE_LENGTH;
  p = realloc(buf, fs->blocksize * new_stride);
  if (!p)
   return EXT2_ET_NO_MEMORY;
  buf = p;
  stride_length = new_stride;
  memset(buf, 0, fs->blocksize * stride_length);
 }

 j=0;
 while (j < num) {
  if (blk % stride_length) {
   count = stride_length - (blk % stride_length);
   if (count > (num - j))
    count = num - j;
  } else {
   count = num - j;
   if (count > stride_length)
    count = stride_length;
  }
  retval = io_channel_write_blk64(fs->io, blk, count, buf);
  if (retval) {
   if (ret_count)
    *ret_count = count;
   if (ret_blk)
    *ret_blk = blk;
   return retval;
  }
  j += count; blk += count;
 }
 return 0;
}
