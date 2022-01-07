
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EPERM ;
 int SET_ERROR (int ) ;
 int * tsd_get (int ) ;
 int zfs_allow_log_key ;

__attribute__((used)) static int
zfs_secpolicy_log_history(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{




 if (tsd_get(zfs_allow_log_key) == ((void*)0))
  return (SET_ERROR(EPERM));
 return (0);
}
