
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vtype_t ;
typedef int mode_t ;


 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VDIR ;
 scalar_t__ VFIFO ;
 scalar_t__ VLNK ;
 int VNON ;
 scalar_t__ VREG ;
 scalar_t__ VSOCK ;

mode_t
vn_vtype_to_mode(vtype_t vtype)
{
 if (vtype == VREG)
  return (S_IFREG);

 if (vtype == VDIR)
  return (S_IFDIR);

 if (vtype == VCHR)
  return (S_IFCHR);

 if (vtype == VBLK)
  return (S_IFBLK);

 if (vtype == VFIFO)
  return (S_IFIFO);

 if (vtype == VLNK)
  return (S_IFLNK);

 if (vtype == VSOCK)
  return (S_IFSOCK);

 return (VNON);
}
