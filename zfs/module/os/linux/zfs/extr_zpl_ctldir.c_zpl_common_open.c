
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EACCES ;
 int FMODE_WRITE ;
 int generic_file_open (struct inode*,struct file*) ;

__attribute__((used)) static int
zpl_common_open(struct inode *ip, struct file *filp)
{
 if (filp->f_mode & FMODE_WRITE)
  return (-EACCES);

 return (generic_file_open(ip, filp));
}
