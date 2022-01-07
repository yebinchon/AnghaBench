
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_inode_large {int i_extra_isize; } ;
struct ext2_inode {int dummy; } ;
struct ext2_ext_attr_entry {unsigned int e_value_offs; scalar_t__ e_value_size; int e_value_inum; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int super; } ;


 scalar_t__ EXT2_ET_INLINE_DATA_NO_SPACE ;
 unsigned int EXT2_EXT_ATTR_LEN (int ) ;
 scalar_t__ EXT2_EXT_ATTR_MAGIC ;
 struct ext2_ext_attr_entry* EXT2_EXT_ATTR_NEXT (struct ext2_ext_attr_entry*) ;
 unsigned int EXT2_EXT_ATTR_ROUND ;
 size_t EXT2_EXT_ATTR_SIZE (unsigned int) ;
 int EXT2_EXT_IS_LAST_ENTRY (struct ext2_ext_attr_entry*) ;
 int EXT2_GOOD_OLD_INODE_SIZE ;
 int EXT2_INODE_SIZE (int ) ;
 int ext2fs_free_mem (struct ext2_inode_large**) ;
 scalar_t__ ext2fs_get_memzero (size_t,struct ext2_inode_large**) ;
 scalar_t__ ext2fs_read_inode_full (TYPE_1__*,int ,struct ext2_inode*,int) ;
 int memcpy (scalar_t__*,char*,int) ;
 int strlen (char*) ;

errcode_t ext2fs_xattr_inode_max_size(ext2_filsys fs, ext2_ino_t ino,
          size_t *size)
{
 struct ext2_ext_attr_entry *entry;
 struct ext2_inode_large *inode;
 __u32 ea_inode_magic;
 unsigned int minoff;
 char *start;
 size_t i;
 errcode_t err;

 i = EXT2_INODE_SIZE(fs->super);
 if (i < sizeof(*inode))
  i = sizeof(*inode);
 err = ext2fs_get_memzero(i, &inode);
 if (err)
  return err;

 err = ext2fs_read_inode_full(fs, ino, (struct ext2_inode *)inode,
         EXT2_INODE_SIZE(fs->super));
 if (err)
  goto out;


 if (EXT2_INODE_SIZE(fs->super) <= EXT2_GOOD_OLD_INODE_SIZE +
        inode->i_extra_isize +
        sizeof(__u32)) {
  err = EXT2_ET_INLINE_DATA_NO_SPACE;
  goto out;
 }

 minoff = EXT2_INODE_SIZE(fs->super) - sizeof(*inode) - sizeof(__u32);
 memcpy(&ea_inode_magic, ((char *) inode) + EXT2_GOOD_OLD_INODE_SIZE +
        inode->i_extra_isize, sizeof(__u32));
 if (ea_inode_magic == EXT2_EXT_ATTR_MAGIC) {

  start= ((char *) inode) + EXT2_GOOD_OLD_INODE_SIZE +
   inode->i_extra_isize + sizeof(__u32);
  entry = (struct ext2_ext_attr_entry *) start;
  while (!EXT2_EXT_IS_LAST_ENTRY(entry)) {
   if (!entry->e_value_inum && entry->e_value_size) {
    unsigned int offs = entry->e_value_offs;
    if (offs < minoff)
     minoff = offs;
   }
   entry = EXT2_EXT_ATTR_NEXT(entry);
  }
  *size = minoff - ((char *)entry - (char *)start) - sizeof(__u32);
 } else {

  *size = EXT2_EXT_ATTR_SIZE(minoff -
        EXT2_EXT_ATTR_LEN(strlen("data")) -
        EXT2_EXT_ATTR_ROUND - sizeof(__u32));
 }

out:
 ext2fs_free_mem(&inode);
 return err;
}
