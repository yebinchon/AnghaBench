
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;




 long zpl_ioctl_getflags (struct file*,void*) ;
 long zpl_ioctl_getxattr (struct file*,void*) ;
 long zpl_ioctl_setflags (struct file*,void*) ;
 long zpl_ioctl_setxattr (struct file*,void*) ;

__attribute__((used)) static long
zpl_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 switch (cmd) {
 case 131:
  return (zpl_ioctl_getflags(filp, (void *)arg));
 case 130:
  return (zpl_ioctl_setflags(filp, (void *)arg));
 case 129:
  return (zpl_ioctl_getxattr(filp, (void *)arg));
 case 128:
  return (zpl_ioctl_setxattr(filp, (void *)arg));
 default:
  return (-ENOTTY);
 }
}
