
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* v_file; } ;
typedef TYPE_1__ vnode_t ;
struct TYPE_7__ {int flags; } ;


 int ASSERT (TYPE_1__*) ;
 int FDSYNC ;
 int __SPL_PF_FSTRANS ;
 int __spl_pf_fstrans_check () ;
 TYPE_4__* current ;
 int spl_filp_fsync (TYPE_1__*,int) ;

int
vn_fsync(vnode_t *vp, int flags, void *x3, void *x4)
{
 int datasync = 0;
 int error;
 int fstrans;

 ASSERT(vp);
 ASSERT(vp->v_file);

 if (flags & FDSYNC)
  datasync = 1;





 fstrans = __spl_pf_fstrans_check();
 if (fstrans)
  current->flags &= ~(__SPL_PF_FSTRANS);

 error = -spl_filp_fsync(vp->v_file, datasync);
 if (fstrans)
  current->flags |= __SPL_PF_FSTRANS;

 return (error);
}
