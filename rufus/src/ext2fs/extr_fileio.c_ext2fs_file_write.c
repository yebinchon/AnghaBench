
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef TYPE_2__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
typedef TYPE_3__* block_entry_t ;
struct TYPE_24__ {int i_flags; } ;
struct TYPE_23__ {int sha; int physblock; } ;
struct TYPE_22__ {int flags; unsigned int pos; TYPE_8__ inode; int ino; int physblock; int blockno; scalar_t__ buf; TYPE_1__* fs; } ;
struct TYPE_21__ {unsigned int blocksize; int flags; int block_sha_map; } ;


 int BMAP_ALLOC ;
 int BMAP_BUFFER ;
 int BMAP_SET ;
 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_ET_FILE_RO ;
 scalar_t__ EXT2_ET_INLINE_DATA_NO_SPACE ;
 int EXT2_ET_MAGIC_EXT2_FILE ;
 scalar_t__ EXT2_ET_NO_MEMORY ;
 int EXT2_FILE_BUF_DIRTY ;
 int EXT2_FILE_WRITE ;
 int EXT2_FLAG_SHARE_DUP ;
 unsigned int EXT2_I_SIZE (TYPE_8__*) ;
 int EXT4_INLINE_DATA_FL ;
 TYPE_3__* calloc (int,int) ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,TYPE_8__*,int ,int,int ,int ,int *) ;
 scalar_t__ ext2fs_file_set_size2 (TYPE_2__*,unsigned int) ;
 scalar_t__ ext2fs_file_write_inline_data (TYPE_2__*,void const*,unsigned int,unsigned int*) ;
 int ext2fs_hashmap_add (int ,TYPE_3__*,int ,int) ;
 TYPE_3__* ext2fs_hashmap_lookup (int ,int ,int) ;
 int ext2fs_iblk_add_blocks (TYPE_1__*,TYPE_8__*,int) ;
 int ext2fs_sha512 (unsigned char const*,unsigned int,int ) ;
 int ext2fs_write_inode (TYPE_1__*,int ,TYPE_8__*) ;
 int free (TYPE_3__*) ;
 scalar_t__ load_buffer (TYPE_2__*,int) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;
 scalar_t__ sync_buffer_position (TYPE_2__*) ;

errcode_t ext2fs_file_write(ext2_file_t file, const void *buf,
       unsigned int nbytes, unsigned int *written)
{
 ext2_filsys fs;
 errcode_t retval = 0;
 unsigned int start, c, count = 0;
 const char *ptr = (const char *) buf;
 block_entry_t new_block = ((void*)0), old_block = ((void*)0);
 int bmap_flags = 0;

 EXT2_CHECK_MAGIC(file, EXT2_ET_MAGIC_EXT2_FILE);
 fs = file->fs;

 if (!(file->flags & EXT2_FILE_WRITE))
  return EXT2_ET_FILE_RO;


 if (file->inode.i_flags & EXT4_INLINE_DATA_FL) {
  retval = ext2fs_file_write_inline_data(file, buf, nbytes,
             written);
  if (retval != EXT2_ET_INLINE_DATA_NO_SPACE)
   return retval;

  retval = 0;
 }

 while (nbytes > 0) {
  retval = sync_buffer_position(file);
  if (retval)
   goto fail;

  start = file->pos % fs->blocksize;
  c = fs->blocksize - start;
  if (c > nbytes)
   c = nbytes;





  retval = load_buffer(file, (c == fs->blocksize));
  if (retval)
   goto fail;

  file->flags |= EXT2_FILE_BUF_DIRTY;
  memcpy(file->buf+start, ptr, c);





  if (!file->physblock) {
   bmap_flags = (file->ino ? BMAP_ALLOC : 0);
   if (fs->flags & EXT2_FLAG_SHARE_DUP) {
    new_block = calloc(1, sizeof(*new_block));
    if (!new_block) {
     retval = EXT2_ET_NO_MEMORY;
     goto fail;
    }
    ext2fs_sha512((const unsigned char*)file->buf,
      fs->blocksize, new_block->sha);
    old_block = ext2fs_hashmap_lookup(
       fs->block_sha_map,
       new_block->sha,
       sizeof(new_block->sha));
   }

   if (old_block) {
    file->physblock = old_block->physblock;
    bmap_flags |= BMAP_SET;
    free(new_block);
    new_block = ((void*)0);
   }

   retval = ext2fs_bmap2(fs, file->ino, &file->inode,
           BMAP_BUFFER,
           bmap_flags,
           file->blockno, 0,
           &file->physblock);
   if (retval) {
    free(new_block);
    new_block = ((void*)0);
    goto fail;
   }

   if (new_block) {
    new_block->physblock = file->physblock;
    ext2fs_hashmap_add(fs->block_sha_map, new_block,
     new_block->sha, sizeof(new_block->sha));
   }

   if (bmap_flags & BMAP_SET) {
    ext2fs_iblk_add_blocks(fs, &file->inode, 1);
    ext2fs_write_inode(fs, file->ino, &file->inode);
   }
  }

  file->pos += c;
  ptr += c;
  count += c;
  nbytes -= c;
 }

fail:

 if (count != 0 && EXT2_I_SIZE(&file->inode) < file->pos) {
  errcode_t rc;

  rc = ext2fs_file_set_size2(file, file->pos);
  if (retval == 0)
   retval = rc;
 }

 if (written)
  *written = count;
 return retval;
}
