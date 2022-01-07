
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uf_info_t ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {int f_list; int f_ref; } ;
typedef TYPE_1__ file_t ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* file_find (int,struct task_struct*) ;
 int list_del (int *) ;
 int releasef_locked (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vn_file_lock ;

void
vn_areleasef(int fd, uf_info_t *fip)
{
 file_t *fp;
 struct task_struct *task = (struct task_struct *)fip;

 if (fd < 0)
  return;

 spin_lock(&vn_file_lock);
 fp = file_find(fd, task);
 if (fp) {
  atomic_dec(&fp->f_ref);
  if (atomic_read(&fp->f_ref) > 0) {
   spin_unlock(&vn_file_lock);
   return;
  }

  list_del(&fp->f_list);
  releasef_locked(fp);
 }
 spin_unlock(&vn_file_lock);
}
