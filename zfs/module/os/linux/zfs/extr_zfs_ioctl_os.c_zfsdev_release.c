
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfsdev_state_destroy (struct file*) ;
 int zfsdev_state_lock ;

__attribute__((used)) static int
zfsdev_release(struct inode *ino, struct file *filp)
{
 int error;

 mutex_enter(&zfsdev_state_lock);
 error = zfsdev_state_destroy(filp);
 mutex_exit(&zfsdev_state_lock);

 return (-error);
}
