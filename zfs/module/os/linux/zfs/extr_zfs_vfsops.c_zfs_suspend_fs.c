
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;


 int B_FALSE ;
 int zfsvfs_teardown (int *,int ) ;

int
zfs_suspend_fs(zfsvfs_t *zfsvfs)
{
 int error;

 if ((error = zfsvfs_teardown(zfsvfs, B_FALSE)) != 0)
  return (error);

 return (0);
}
