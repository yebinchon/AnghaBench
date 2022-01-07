
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _buf {int vp; } ;
typedef unsigned int ssize_t ;
typedef int offset_t ;


 int UIO_READ ;
 int UIO_SYSSPACE ;
 scalar_t__ vn_rdwr (int ,int ,char*,unsigned int,int ,int ,int ,int ,int ,unsigned int*) ;

int
kobj_read_file(struct _buf *file, char *buf, unsigned size, unsigned off)
{
 ssize_t resid;

 if (vn_rdwr(UIO_READ, file->vp, buf, size, (offset_t)off,
     UIO_SYSSPACE, 0, 0, 0, &resid) != 0)
  return (-1);

 return (size - resid);
}
