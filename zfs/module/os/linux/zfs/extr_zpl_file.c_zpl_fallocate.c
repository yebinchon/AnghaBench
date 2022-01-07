
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int file_inode (struct file*) ;
 long zpl_fallocate_common (int ,int,int ,int ) ;

__attribute__((used)) static long
zpl_fallocate(struct file *filp, int mode, loff_t offset, loff_t len)
{
 return zpl_fallocate_common(file_inode(filp),
     mode, offset, len);
}
