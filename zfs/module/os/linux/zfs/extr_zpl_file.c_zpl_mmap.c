
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int z_lock; int z_is_mapped; } ;
typedef TYPE_2__ znode_t ;
struct vm_area_struct {int vm_flags; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int fstrans_cookie_t ;
typedef int caddr_t ;
struct TYPE_4__ {struct inode* host; } ;


 int B_TRUE ;
 TYPE_2__* ITOZ (struct inode*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zfs_map (struct inode*,int ,int *,size_t,int ) ;

__attribute__((used)) static int
zpl_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct inode *ip = filp->f_mapping->host;
 znode_t *zp = ITOZ(ip);
 int error;
 fstrans_cookie_t cookie;

 cookie = spl_fstrans_mark();
 error = -zfs_map(ip, vma->vm_pgoff, (caddr_t *)vma->vm_start,
     (size_t)(vma->vm_end - vma->vm_start), vma->vm_flags);
 spl_fstrans_unmark(cookie);
 if (error)
  return (error);

 error = generic_file_mmap(filp, vma);
 if (error)
  return (error);

 mutex_enter(&zp->z_lock);
 zp->z_is_mapped = B_TRUE;
 mutex_exit(&zp->z_lock);

 return (error);
}
