
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int cred_t ;


 int CRED () ;
 int EPERM ;
 int INGLOBALZONE (int ) ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;





 int curproc ;
 int dsl_prop_get_integer (char const*,int ,int *,char*) ;
 int is_system_labeled () ;
 int nvpair_value_string (int *,char**) ;
 int strlen (char const*) ;
 int zfs_prop_to_name (int const) ;
 int zfs_secpolicy_write_perms (char const*,int ,int *) ;
 int zfs_set_slabel_policy (char const*,char*,int ) ;

__attribute__((used)) static int
zfs_secpolicy_setprop(const char *dsname, zfs_prop_t prop, nvpair_t *propval,
    cred_t *cr)
{
 char *strval;




 switch (prop) {
 default:
  break;
 case 128:



  if (!INGLOBALZONE(curproc))
   return (SET_ERROR(EPERM));
  break;

 case 130:
 case 132:
 case 129:
  if (!INGLOBALZONE(curproc)) {
   uint64_t zoned;
   char setpoint[ZFS_MAX_DATASET_NAME_LEN];





   if (dsl_prop_get_integer(dsname,
       zfs_prop_to_name(128), &zoned, setpoint))
    return (SET_ERROR(EPERM));
   if (!zoned || strlen(dsname) <= strlen(setpoint))
    return (SET_ERROR(EPERM));
  }
  break;

 case 131:
  if (!is_system_labeled())
   return (SET_ERROR(EPERM));

  if (nvpair_value_string(propval, &strval) == 0) {
   int err;

   err = zfs_set_slabel_policy(dsname, strval, CRED());
   if (err != 0)
    return (err);
  }
  break;
 }

 return (zfs_secpolicy_write_perms(dsname, zfs_prop_to_name(prop), cr));
}
