
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ext2_super_block {int dummy; } ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u16 ;
struct TYPE_9__ {TYPE_1__* manager; } ;
struct TYPE_8__ {scalar_t__ orig_super; TYPE_4__* io; scalar_t__ blocksize; } ;
struct TYPE_7__ {int write_byte; } ;


 scalar_t__ EXT2_ET_UNIMPLEMENTED ;
 scalar_t__ SUPERBLOCK_OFFSET ;
 int SUPERBLOCK_SIZE ;
 int io_channel_set_blksize (TYPE_4__*,scalar_t__) ;
 scalar_t__ io_channel_write_blk64 (TYPE_4__*,int,int,struct ext2_super_block*) ;
 scalar_t__ io_channel_write_byte (TYPE_4__*,scalar_t__,int,scalar_t__*) ;
 int memcpy (scalar_t__,struct ext2_super_block*,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static errcode_t write_primary_superblock(ext2_filsys fs,
       struct ext2_super_block *super)
{
 __u16 *old_super, *new_super;
 int check_idx, write_idx, size;
 errcode_t retval;

 if (!fs->io->manager->write_byte || !fs->orig_super) {
 fallback:
  io_channel_set_blksize(fs->io, SUPERBLOCK_OFFSET);
  retval = io_channel_write_blk64(fs->io, 1, -SUPERBLOCK_SIZE,
           super);
  io_channel_set_blksize(fs->io, fs->blocksize);
  return retval;
 }

 old_super = (__u16 *) fs->orig_super;
 new_super = (__u16 *) super;

 for (check_idx = 0; check_idx < SUPERBLOCK_SIZE/2; check_idx++) {
  if (old_super[check_idx] == new_super[check_idx])
   continue;
  write_idx = check_idx;
  for (check_idx++; check_idx < SUPERBLOCK_SIZE/2; check_idx++)
   if (old_super[check_idx] == new_super[check_idx])
    break;
  size = 2 * (check_idx - write_idx);




  retval = io_channel_write_byte(fs->io,
          SUPERBLOCK_OFFSET + (2 * write_idx), size,
            new_super + write_idx);
  if (retval == EXT2_ET_UNIMPLEMENTED)
   goto fallback;
  if (retval)
   return retval;
 }
 memcpy(fs->orig_super, super, SUPERBLOCK_SIZE);
 return 0;
}
