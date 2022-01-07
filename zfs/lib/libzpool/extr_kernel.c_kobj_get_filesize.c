
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_fd; } ;
typedef TYPE_1__ vnode_t ;
typedef int uint64_t ;
struct stat64 {int st_size; } ;
struct _buf {scalar_t__ _fd; } ;


 int errno ;
 int fstat64 (int ,struct stat64*) ;
 int vn_close (TYPE_1__*) ;

int
kobj_get_filesize(struct _buf *file, uint64_t *size)
{
 struct stat64 st;
 vnode_t *vp = (vnode_t *)file->_fd;

 if (fstat64(vp->v_fd, &st) == -1) {
  vn_close(vp);
  return (errno);
 }
 *size = st.st_size;
 return (0);
}
