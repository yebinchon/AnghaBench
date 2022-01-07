
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_inode_large {void* i_checksum_hi; void* i_checksum_lo; int i_generation; } ;
typedef int inum ;
typedef int gen ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef int __u32 ;
typedef void* __u16 ;
struct TYPE_3__ {int csum_seed; int super; } ;


 size_t EXT2_INODE_SIZE (int ) ;
 int ext2fs_cpu_to_le32 (int ) ;
 int ext2fs_crc32c_le (int ,unsigned char*,size_t) ;

__attribute__((used)) static errcode_t ext2fs_inode_csum(ext2_filsys fs, ext2_ino_t inum,
          struct ext2_inode_large *inode,
          __u32 *crc, int has_hi)
{
 __u32 gen;
 struct ext2_inode_large *desc = inode;
 size_t size = EXT2_INODE_SIZE(fs->super);
 __u16 old_lo;
 __u16 old_hi = 0;

 old_lo = inode->i_checksum_lo;
 inode->i_checksum_lo = 0;
 if (has_hi) {
  old_hi = inode->i_checksum_hi;
  inode->i_checksum_hi = 0;
 }

 inum = ext2fs_cpu_to_le32(inum);
 gen = inode->i_generation;
 *crc = ext2fs_crc32c_le(fs->csum_seed, (unsigned char *)&inum,
    sizeof(inum));
 *crc = ext2fs_crc32c_le(*crc, (unsigned char *)&gen, sizeof(gen));
 *crc = ext2fs_crc32c_le(*crc, (unsigned char *)desc, size);

 inode->i_checksum_lo = old_lo;
 if (has_hi)
  inode->i_checksum_hi = old_hi;
 return 0;
}
