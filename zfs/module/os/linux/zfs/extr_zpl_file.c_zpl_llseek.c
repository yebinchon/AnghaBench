
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
typedef int fstrans_cookie_t ;
struct TYPE_4__ {int s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;


 int SEEK_DATA ;
 int SEEK_HOLE ;
 int generic_file_llseek (struct file*,int ,int) ;
 int lseek_execute (struct file*,struct inode*,int ,int ) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int spl_inode_lock_shared (struct inode*) ;
 int spl_inode_unlock_shared (struct inode*) ;
 int zfs_holey (struct inode*,int,int *) ;

__attribute__((used)) static loff_t
zpl_llseek(struct file *filp, loff_t offset, int whence)
{
 return (generic_file_llseek(filp, offset, whence));
}
