
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_kernel_param_t ;


 int mmp_signal_all_threads () ;
 int param_set_ulong (char const*,int *) ;
 scalar_t__ spa_mode_global ;

__attribute__((used)) static int
param_set_multihost_interval(const char *val, zfs_kernel_param_t *kp)
{
 int ret;

 ret = param_set_ulong(val, kp);
 if (ret < 0)
  return (ret);

 if (spa_mode_global != 0)
  mmp_signal_all_threads();

 return (ret);
}
