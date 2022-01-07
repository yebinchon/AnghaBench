
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct _buf {scalar_t__ _fd; } ;


 int umem_free (struct _buf*,int) ;
 int vn_close (int *) ;

void
kobj_close_file(struct _buf *file)
{
 vn_close((vnode_t *)file->_fd);
 umem_free(file, sizeof (struct _buf));
}
