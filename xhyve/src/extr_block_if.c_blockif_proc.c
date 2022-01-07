
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct blockif_req {int br_iovcnt; int (* br_callback ) (struct blockif_req*,int) ;scalar_t__ br_resid; scalar_t__ br_offset; TYPE_1__* br_iov; } ;
struct blockif_elem {int be_op; int be_status; struct blockif_req* be_req; } ;
struct blockif_ctxt {int bc_candelete; int bc_fd; int bc_ischr; int bc_rdonly; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int iov_len; int iov_base; } ;






 int BST_DONE ;
 int DKIOCSYNCHRONIZECACHE ;
 int EOPNOTSUPP ;
 int EROFS ;
 scalar_t__ MAXPHYS ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int errno ;
 int fsync (int ) ;
 int ioctl (int ,int ) ;
 int memcpy (void*,void*,scalar_t__) ;
 int pread (int ,void*,size_t,scalar_t__) ;
 scalar_t__ preadv (int ,TYPE_1__*,int,scalar_t__) ;
 int pwrite (int ,void*,size_t,scalar_t__) ;
 scalar_t__ pwritev (int ,TYPE_1__*,int,scalar_t__) ;
 int stub1 (struct blockif_req*,int) ;

__attribute__((used)) static void
blockif_proc(struct blockif_ctxt *bc, struct blockif_elem *be, uint8_t *buf)
{
 struct blockif_req *br;

 ssize_t clen, len, off, boff, voff;
 int i, err;

 br = be->be_req;
 if (br->br_iovcnt <= 1)
  buf = ((void*)0);
 err = 0;
 switch (be->be_op) {
 case 129:
  if (buf == ((void*)0)) {
   if ((len = preadv(bc->bc_fd, br->br_iov, br->br_iovcnt,
       br->br_offset)) < 0)
    err = errno;
   else
    br->br_resid -= len;
   break;
  }
  i = 0;
  off = voff = 0;
  while (br->br_resid > 0) {
   len = MIN(br->br_resid, MAXPHYS);
   if (pread(bc->bc_fd, buf, ((size_t) len), br->br_offset + off) < 0)
   {
    err = errno;
    break;
   }
   boff = 0;
   do {
    clen = MIN((len - boff),
     (((ssize_t) br->br_iov[i].iov_len) - voff));
    memcpy(((void *) (((uintptr_t) br->br_iov[i].iov_base) +
     ((size_t) voff))), buf + boff, clen);
    if (clen < (((ssize_t) br->br_iov[i].iov_len) - voff))
     voff += clen;
    else {
     i++;
     voff = 0;
    }
    boff += clen;
   } while (boff < len);
   off += len;
   br->br_resid -= len;
  }
  break;
 case 128:
  if (bc->bc_rdonly) {
   err = EROFS;
   break;
  }
  if (buf == ((void*)0)) {
   if ((len = pwritev(bc->bc_fd, br->br_iov, br->br_iovcnt,
        br->br_offset)) < 0)
    err = errno;
   else
    br->br_resid -= len;
   break;
  }
  i = 0;
  off = voff = 0;
  while (br->br_resid > 0) {
   len = MIN(br->br_resid, MAXPHYS);
   boff = 0;
   do {
    clen = MIN((len - boff),
     (((ssize_t) br->br_iov[i].iov_len) - voff));
    memcpy((buf + boff),
     ((void *) (((uintptr_t) br->br_iov[i].iov_base) +
      ((size_t) voff))), clen);
    if (clen < (((ssize_t) br->br_iov[i].iov_len) - voff))
     voff += clen;
    else {
     i++;
     voff = 0;
    }
    boff += clen;
   } while (boff < len);
   if (pwrite(bc->bc_fd, buf, ((size_t) len), br->br_offset +
       off) < 0) {
    err = errno;
    break;
   }
   off += len;
   br->br_resid -= len;
  }
  break;
 case 130:
  if (bc->bc_ischr) {
   if (ioctl(bc->bc_fd, DKIOCSYNCHRONIZECACHE))
    err = errno;
  } else if (fsync(bc->bc_fd))
   err = errno;
  break;
 case 131:
  if (!bc->bc_candelete) {
   err = EOPNOTSUPP;
  } else {
   err = EOPNOTSUPP;
  }
  break;
 }

 be->be_status = BST_DONE;

 (*br->br_callback)(br, err);
}
