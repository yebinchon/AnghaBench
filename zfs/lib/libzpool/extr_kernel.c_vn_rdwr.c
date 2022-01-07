
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_dump_fd; int v_fd; } ;
typedef TYPE_1__ vnode_t ;
typedef int ssize_t ;
typedef int rlim64_t ;
typedef scalar_t__ offset_t ;


 int ASSERT (int) ;
 scalar_t__ EINVAL ;
 int EIO ;
 int SPA_MINBLOCKSHIFT ;
 int UIO_READ ;
 int abort () ;
 scalar_t__ errno ;
 int pread64 (int ,void*,int,scalar_t__) ;
 int pwrite64 (int,char*,int,scalar_t__) ;
 int rand () ;

int
vn_rdwr(int uio, vnode_t *vp, void *addr, ssize_t len, offset_t offset,
    int x1, int x2, rlim64_t x3, void *x4, ssize_t *residp)
{
 ssize_t rc, done = 0, split;

 if (uio == UIO_READ) {
  rc = pread64(vp->v_fd, addr, len, offset);
  if (vp->v_dump_fd != -1 && rc != -1) {
   int status;
   status = pwrite64(vp->v_dump_fd, addr, rc, offset);
   ASSERT(status != -1);
  }
 } else {




  int sectors = len >> SPA_MINBLOCKSHIFT;
  split = (sectors > 0 ? rand() % sectors : 0) <<
      SPA_MINBLOCKSHIFT;
  rc = pwrite64(vp->v_fd, addr, split, offset);
  if (rc != -1) {
   done = rc;
   rc = pwrite64(vp->v_fd, (char *)addr + split,
       len - split, offset + split);
  }
 }


 if (rc == -1 && errno == EINVAL) {





  abort();
 }

 if (rc == -1)
  return (errno);

 done += rc;

 if (residp)
  *residp = len - done;
 else if (done != len)
  return (EIO);
 return (0);
}
