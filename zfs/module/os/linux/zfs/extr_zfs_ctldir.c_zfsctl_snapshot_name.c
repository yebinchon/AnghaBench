
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int objset_t ;


 int EILSEQ ;
 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 int dmu_objset_name (int *,char*) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ zfs_component_namecheck (char const*,int *,int *) ;

__attribute__((used)) static int
zfsctl_snapshot_name(zfsvfs_t *zfsvfs, const char *snap_name, int len,
    char *full_name)
{
 objset_t *os = zfsvfs->z_os;

 if (zfs_component_namecheck(snap_name, ((void*)0), ((void*)0)) != 0)
  return (SET_ERROR(EILSEQ));

 dmu_objset_name(os, full_name);
 if ((strlen(full_name) + 1 + strlen(snap_name)) >= len)
  return (SET_ERROR(ENAMETOOLONG));

 (void) strcat(full_name, "@");
 (void) strcat(full_name, snap_name);

 return (0);
}
