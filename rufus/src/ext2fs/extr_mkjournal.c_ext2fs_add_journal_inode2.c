
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_ino; } ;
typedef int jfile ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
typedef int blk64_t ;
struct TYPE_8__ {int s_journal_uuid; scalar_t__ s_journal_dev; int s_journal_inum; int s_jnl_blocks; } ;
struct TYPE_7__ {int flags; TYPE_4__* super; int device_name; } ;


 scalar_t__ EBUSY ;
 int EXT2_FLAG_EXCLUSIVE ;
 int EXT2_IMMUTABLE_FL ;
 int EXT2_IOC_GETFLAGS ;
 int EXT2_IOC_SETFLAGS ;
 int EXT2_JOURNAL_INO ;
 int EXT2_MF_BUSY ;
 int EXT2_MF_MOUNTED ;
 int EXT2_MKJOURNAL_LAZYINIT ;
 int EXT2_MKJOURNAL_NO_MNT_CHECK ;
 int EXT2_NODUMP_FL ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int UF_IMMUTABLE ;
 int UF_NODUMP ;
 int chflags (char*,int ) ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 scalar_t__ ext2fs_check_mount_point (int ,int*,char*,int) ;
 int ext2fs_mark_super_dirty (TYPE_1__*) ;
 int ext2fs_set_feature_journal (TYPE_4__*) ;
 scalar_t__ fchflags (int,int) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int memset (int ,int ,int) ;
 int open (char*,int,...) ;
 int strcat (char*,char*) ;
 scalar_t__ write_journal_file (TYPE_1__*,char*,int ,int) ;
 scalar_t__ write_journal_inode (TYPE_1__*,int ,int ,int ,int) ;

errcode_t ext2fs_add_journal_inode2(ext2_filsys fs, blk_t num_blocks,
        blk64_t goal, int flags)
{
 errcode_t retval;
 ext2_ino_t journal_ino;
 struct stat st;
 char jfile[1024];
 int mount_flags;
 int fd = -1;

 if (flags & EXT2_MKJOURNAL_NO_MNT_CHECK)
  mount_flags = 0;
 else if ((retval = ext2fs_check_mount_point(fs->device_name,
          &mount_flags,
          jfile, sizeof(jfile)-10)))
  return retval;

 if (mount_flags & EXT2_MF_MOUNTED) {



  strcat(jfile, "/.journal");
  if ((fd = open(jfile, O_CREAT|O_WRONLY, 0600)) < 0)
   return errno;






  flags &= ~EXT2_MKJOURNAL_LAZYINIT;

  if ((retval = write_journal_file(fs, jfile, num_blocks, flags)))
   goto errout;


  if (fstat(fd, &st) < 0) {
   retval = errno;
   goto errout;
  }
  if (retval) {
   retval = errno;
   goto errout;
  }

  if (close(fd) < 0) {
   retval = errno;
   fd = -1;
   goto errout;
  }
  journal_ino = st.st_ino;
  memset(fs->super->s_jnl_blocks, 0,
         sizeof(fs->super->s_jnl_blocks));
 } else {
  if ((mount_flags & EXT2_MF_BUSY) &&
      !(fs->flags & EXT2_FLAG_EXCLUSIVE)) {
   retval = EBUSY;
   goto errout;
  }
  journal_ino = EXT2_JOURNAL_INO;
  if ((retval = write_journal_inode(fs, journal_ino,
        num_blocks, goal, flags)))
   return retval;
 }

 fs->super->s_journal_inum = journal_ino;
 fs->super->s_journal_dev = 0;
 memset(fs->super->s_journal_uuid, 0,
        sizeof(fs->super->s_journal_uuid));
 ext2fs_set_feature_journal(fs->super);

 ext2fs_mark_super_dirty(fs);
 return 0;
errout:
 if (fd >= 0)
  close(fd);
 return retval;
}
