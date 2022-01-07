
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int vfs_fsync (struct file*,int) ;

__attribute__((used)) static int
spl_filp_fsync(struct file *fp, int sync)
{
 return (vfs_fsync(fp, sync));
}
