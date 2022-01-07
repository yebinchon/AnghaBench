
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int v_lock; struct file* v_file; int v_type; } ;
typedef TYPE_1__ vnode_t ;
struct kstat {int mode; } ;
struct TYPE_12__ {int mnt; } ;
struct file {int f_dentry; TYPE_6__ f_path; } ;
struct TYPE_11__ {int f_fd; int f_lock; int f_list; struct file* f_file; TYPE_1__* f_vnode; int f_ref; scalar_t__ f_offset; int f_task; } ;
typedef TYPE_2__ file_t ;


 int AT_STATX_SYNC_AS_STAT ;
 int KM_SLEEP ;
 int STATX_TYPE ;
 int atomic_inc (int *) ;
 int current ;
 struct file* fget (int) ;
 TYPE_2__* file_find (int,int ) ;
 int fput (struct file*) ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,TYPE_2__*) ;
 int list_add (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfs_getattr (TYPE_6__*,struct kstat*,...) ;
 TYPE_1__* vn_alloc (int ) ;
 int vn_file_cache ;
 int vn_file_list ;
 int vn_file_lock ;
 int vn_free (TYPE_1__*) ;
 int vn_mode_to_vtype (int ) ;

file_t *
vn_getf(int fd)
{
 struct kstat stat;
 struct file *lfp;
 file_t *fp;
 vnode_t *vp;
 int rc = 0;

 if (fd < 0)
  return (((void*)0));


 spin_lock(&vn_file_lock);

 fp = file_find(fd, current);
 if (fp) {
  lfp = fget(fd);
  fput(fp->f_file);







  if (lfp != fp->f_file) {
   fp->f_file = lfp;
   fp->f_vnode->v_file = lfp;
  }
  atomic_inc(&fp->f_ref);
  spin_unlock(&vn_file_lock);
  return (fp);
 }

 spin_unlock(&vn_file_lock);


 fp = kmem_cache_alloc(vn_file_cache, KM_SLEEP);
 if (fp == ((void*)0))
  goto out;

 mutex_enter(&fp->f_lock);

 fp->f_fd = fd;
 fp->f_task = current;
 fp->f_offset = 0;
 atomic_inc(&fp->f_ref);

 lfp = fget(fd);
 if (lfp == ((void*)0))
  goto out_mutex;

 vp = vn_alloc(KM_SLEEP);
 if (vp == ((void*)0))
  goto out_fget;







 rc = vfs_getattr(lfp->f_path.mnt, lfp->f_dentry, &stat);

 if (rc)
  goto out_vnode;

 mutex_enter(&vp->v_lock);
 vp->v_type = vn_mode_to_vtype(stat.mode);
 vp->v_file = lfp;
 mutex_exit(&vp->v_lock);

 fp->f_vnode = vp;
 fp->f_file = lfp;


 spin_lock(&vn_file_lock);
 list_add(&fp->f_list, &vn_file_list);
 spin_unlock(&vn_file_lock);

 mutex_exit(&fp->f_lock);
 return (fp);

out_vnode:
 vn_free(vp);
out_fget:
 fput(lfp);
out_mutex:
 mutex_exit(&fp->f_lock);
 kmem_cache_free(vn_file_cache, fp);
out:
 return (((void*)0));
}
