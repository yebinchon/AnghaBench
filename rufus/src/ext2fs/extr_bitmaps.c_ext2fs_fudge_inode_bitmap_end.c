
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ext2fs_inode_bitmap ;
typedef int ext2fs_generic_bitmap ;
typedef int ext2_ino_t ;
typedef int errcode_t ;
typedef int __u64 ;


 int EXT2_ET_FUDGE_INODE_BITMAP_END ;
 int ext2fs_fudge_generic_bmap_end (int ,int ,int ,int *) ;

errcode_t ext2fs_fudge_inode_bitmap_end(ext2fs_inode_bitmap bitmap,
     ext2_ino_t end, ext2_ino_t *oend)
{
 __u64 tmp_oend;
 int retval;

 retval = ext2fs_fudge_generic_bmap_end((ext2fs_generic_bitmap) bitmap,
            EXT2_ET_FUDGE_INODE_BITMAP_END,
            end, &tmp_oend);
 if (oend)
  *oend = tmp_oend;
 return retval;
}
