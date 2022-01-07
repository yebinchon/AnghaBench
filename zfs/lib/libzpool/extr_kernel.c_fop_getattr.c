
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int v_fd; } ;
typedef TYPE_1__ vnode_t ;
struct TYPE_6__ {int va_size; } ;
typedef TYPE_2__ vattr_t ;
struct stat64 {int st_size; } ;


 int close (int ) ;
 int errno ;
 int fstat64_blk (int ,struct stat64*) ;

int
fop_getattr(vnode_t *vp, vattr_t *vap)
{
 struct stat64 st;
 int err;

 if (fstat64_blk(vp->v_fd, &st) == -1) {
  err = errno;
  close(vp->v_fd);
  return (err);
 }

 vap->va_size = st.st_size;
 return (0);
}
