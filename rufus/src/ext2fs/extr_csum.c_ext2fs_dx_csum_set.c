
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ext2_dx_tail {int dt_checksum; } ;
struct ext2_dx_entry {int dummy; } ;
struct ext2_dx_countlimit {int count; int limit; } ;
struct ext2_dir_entry {int dummy; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;
struct TYPE_5__ {int blocksize; } ;


 scalar_t__ EXT2_ET_DIR_NO_SPACE_FOR_CSUM ;
 scalar_t__ __get_dx_countlimit (TYPE_1__*,struct ext2_dir_entry*,struct ext2_dx_countlimit**,int*,int) ;
 int ext2fs_cpu_to_le32 (int ) ;
 scalar_t__ ext2fs_dx_csum (TYPE_1__*,int ,struct ext2_dir_entry*,int *,int,int,struct ext2_dx_tail*) ;
 int ext2fs_le16_to_cpu (int ) ;

__attribute__((used)) static errcode_t ext2fs_dx_csum_set(ext2_filsys fs, ext2_ino_t inum,
        struct ext2_dir_entry *dirent)
{
 __u32 crc;
 errcode_t retval = 0;
 struct ext2_dx_countlimit *c;
 struct ext2_dx_tail *t;
 int count_offset, limit, count;

 retval = __get_dx_countlimit(fs, dirent, &c, &count_offset, 1);
 if (retval)
  return retval;
 limit = ext2fs_le16_to_cpu(c->limit);
 count = ext2fs_le16_to_cpu(c->count);
 if (count_offset + (limit * sizeof(struct ext2_dx_entry)) >
     fs->blocksize - sizeof(struct ext2_dx_tail))
  return EXT2_ET_DIR_NO_SPACE_FOR_CSUM;
 t = (struct ext2_dx_tail *)(((struct ext2_dx_entry *)c) + limit);


 retval = ext2fs_dx_csum(fs, inum, dirent, &crc, count_offset, count, t);
 if (retval)
  return retval;
 t->dt_checksum = ext2fs_cpu_to_le32(crc);
 return retval;
}
