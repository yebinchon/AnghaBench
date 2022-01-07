
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_rdev; int st_mode; } ;
struct TYPE_8__ {unsigned int h_magic; unsigned int h_blocktype; } ;
struct TYPE_9__ {int s_uuid; int s_nr_users; int * s_users; int s_blocksize; TYPE_1__ s_header; } ;
typedef TYPE_2__ journal_superblock_t ;
typedef TYPE_3__* ext2_filsys ;
typedef int errcode_t ;
typedef int __u32 ;
struct TYPE_11__ {int s_jnl_blocks; int * s_journal_uuid; int s_journal_dev; scalar_t__ s_journal_inum; int s_uuid; } ;
struct TYPE_10__ {TYPE_4__* super; int io; scalar_t__ blocksize; int device_name; } ;


 int EXT2_ET_CORRUPT_JOURNAL_SB ;
 int EXT2_ET_JOURNAL_NOT_BLOCK ;
 int EXT2_ET_NO_JOURNAL_SB ;
 int EXT2_ET_UNEXPECTED_BLOCK_SIZE ;
 int JFS_MAGIC_NUMBER ;
 int JFS_SUPERBLOCK_V2 ;
 int JFS_USERS_MAX ;
 int SUPERBLOCK_SIZE ;
 int S_ISBLK (int ) ;
 int errno ;
 int ext2fs_journal_sb_start (scalar_t__) ;
 int ext2fs_mark_super_dirty (TYPE_3__*) ;
 int ext2fs_set_feature_journal (TYPE_4__*) ;
 int htonl (int) ;
 int io_channel_read_blk64 (int ,int,int,char*) ;
 int io_channel_write_blk64 (int ,int,int,char*) ;
 scalar_t__ memcmp (int ,int *,int) ;
 int memcpy (int *,int ,int) ;
 int memset (int ,int ,int) ;
 unsigned long ntohl (int ) ;
 scalar_t__ stat (int ,struct stat*) ;

errcode_t ext2fs_add_journal_device(ext2_filsys fs, ext2_filsys journal_dev)
{
 struct stat st;
 errcode_t retval;
 char buf[SUPERBLOCK_SIZE];
 journal_superblock_t *jsb;
 int start;
 __u32 i, nr_users;


 if (stat(journal_dev->device_name, &st) < 0)
  return errno;

 if (!S_ISBLK(st.st_mode))
  return EXT2_ET_JOURNAL_NOT_BLOCK;


 start = ext2fs_journal_sb_start(journal_dev->blocksize);
 if ((retval = io_channel_read_blk64(journal_dev->io, start,
         -SUPERBLOCK_SIZE,
         buf)))
  return retval;

 jsb = (journal_superblock_t *) buf;
 if ((jsb->s_header.h_magic != (unsigned) ntohl(JFS_MAGIC_NUMBER)) ||
     (jsb->s_header.h_blocktype != (unsigned) ntohl(JFS_SUPERBLOCK_V2)))
  return EXT2_ET_NO_JOURNAL_SB;

 if (ntohl(jsb->s_blocksize) != (unsigned long) fs->blocksize)
  return EXT2_ET_UNEXPECTED_BLOCK_SIZE;


 nr_users = ntohl(jsb->s_nr_users);
 if (nr_users > JFS_USERS_MAX)
  return EXT2_ET_CORRUPT_JOURNAL_SB;
 for (i=0; i < nr_users; i++) {
  if (memcmp(fs->super->s_uuid,
      &jsb->s_users[i*16], 16) == 0)
   break;
 }
 if (i >= nr_users) {
  memcpy(&jsb->s_users[nr_users*16],
         fs->super->s_uuid, 16);
  jsb->s_nr_users = htonl(nr_users+1);
 }


 if ((retval = io_channel_write_blk64(journal_dev->io, start,
         -SUPERBLOCK_SIZE, buf)))
  return retval;

 fs->super->s_journal_inum = 0;
 fs->super->s_journal_dev = st.st_rdev;
 memcpy(fs->super->s_journal_uuid, jsb->s_uuid,
        sizeof(fs->super->s_journal_uuid));
 memset(fs->super->s_jnl_blocks, 0, sizeof(fs->super->s_jnl_blocks));
 ext2fs_set_feature_journal(fs->super);
 ext2fs_mark_super_dirty(fs);
 return 0;
}
