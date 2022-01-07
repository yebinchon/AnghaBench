
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmd_hdl_t ;


 scalar_t__ strcmp (char const*,char*) ;
 int zfs_diagnosis_module ;
 int zfs_retire_module ;

fmd_hdl_t *
fmd_module_hdl(const char *name)
{
 if (strcmp(name, "zfs-retire") == 0)
  return ((fmd_hdl_t *)&zfs_retire_module);
 if (strcmp(name, "zfs-diagnosis") == 0)
  return ((fmd_hdl_t *)&zfs_diagnosis_module);

 return (((void*)0));
}
