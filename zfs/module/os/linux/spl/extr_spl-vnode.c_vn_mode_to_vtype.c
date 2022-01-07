
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtype_t ;
typedef int mode_t ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int VBLK ;
 int VCHR ;
 int VDIR ;
 int VFIFO ;
 int VLNK ;
 int VNON ;
 int VREG ;
 int VSOCK ;

vtype_t
vn_mode_to_vtype(mode_t mode)
{
 if (S_ISREG(mode))
  return (VREG);

 if (S_ISDIR(mode))
  return (VDIR);

 if (S_ISCHR(mode))
  return (VCHR);

 if (S_ISBLK(mode))
  return (VBLK);

 if (S_ISFIFO(mode))
  return (VFIFO);

 if (S_ISLNK(mode))
  return (VLNK);

 if (S_ISSOCK(mode))
  return (VSOCK);

 return (VNON);
}
