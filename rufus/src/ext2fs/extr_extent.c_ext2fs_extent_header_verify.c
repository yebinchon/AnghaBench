
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_extent_idx {int dummy; } ;
struct ext3_extent_header {scalar_t__ eh_depth; int eh_max; int eh_entries; int eh_magic; } ;
struct ext3_extent {int dummy; } ;
typedef int errcode_t ;


 int EXT2_ET_EXTENT_HEADER_BAD ;
 int EXT3_EXT_MAGIC ;
 int dbg_show_header (struct ext3_extent_header*) ;
 int ext2fs_le16_to_cpu (int ) ;

errcode_t ext2fs_extent_header_verify(void *ptr, int size)
{
 int eh_max, entry_size;
 struct ext3_extent_header *eh = ptr;

 dbg_show_header(eh);
 if (ext2fs_le16_to_cpu(eh->eh_magic) != EXT3_EXT_MAGIC)
  return EXT2_ET_EXTENT_HEADER_BAD;
 if (ext2fs_le16_to_cpu(eh->eh_entries) > ext2fs_le16_to_cpu(eh->eh_max))
  return EXT2_ET_EXTENT_HEADER_BAD;
 if (eh->eh_depth == 0)
  entry_size = sizeof(struct ext3_extent);
 else
  entry_size = sizeof(struct ext3_extent_idx);

 eh_max = (size - sizeof(*eh)) / entry_size;


 if ((ext2fs_le16_to_cpu(eh->eh_max) > eh_max) ||
     (ext2fs_le16_to_cpu(eh->eh_max) < (eh_max - 2)))
  return EXT2_ET_EXTENT_HEADER_BAD;

 return 0;
}
