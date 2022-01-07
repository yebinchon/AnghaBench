
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zprop_type_t ;
typedef int zprop_source_t ;
typedef scalar_t__ zfs_prop_t ;
struct TYPE_3__ {char* zc_value; int zc_name; scalar_t__ zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;



 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 scalar_t__ ZFS_PROP_VERSION ;
 scalar_t__ ZFS_PROP_VOLSIZE ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_SRC_INHERITED ;
 int ZPROP_SRC_NONE ;
 int dsl_prop_inherit (int ,char*,int ) ;
 int * fnvlist_alloc () ;
 int nvlist_add_string (int *,char const*,char*) ;
 int nvlist_add_uint64 (int *,char const*,int ) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 int zfs_prop_get_type (scalar_t__) ;
 int zfs_prop_inheritable (scalar_t__) ;
 int zfs_prop_set_special (int ,int ,int *) ;
 int zfs_prop_user (char const*) ;

__attribute__((used)) static int
zfs_ioc_inherit_prop(zfs_cmd_t *zc)
{
 const char *propname = zc->zc_value;
 zfs_prop_t prop = zfs_name_to_prop(propname);
 boolean_t received = zc->zc_cookie;
 zprop_source_t source = (received
     ? ZPROP_SRC_NONE
     : ZPROP_SRC_INHERITED);
 nvlist_t *dummy;
 nvpair_t *pair;
 zprop_type_t type;
 int err;

 if (!received) {






  if (prop != ZPROP_INVAL && !zfs_prop_inheritable(prop))
   return (SET_ERROR(EINVAL));
 }

 if (prop == ZPROP_INVAL) {
  if (!zfs_prop_user(propname))
   return (SET_ERROR(EINVAL));

  type = 128;
 } else if (prop == ZFS_PROP_VOLSIZE || prop == ZFS_PROP_VERSION) {
  return (SET_ERROR(EINVAL));
 } else {
  type = zfs_prop_get_type(prop);
 }





 dummy = fnvlist_alloc();

 switch (type) {
 case 128:
  VERIFY(0 == nvlist_add_string(dummy, propname, ""));
  break;
 case 129:
 case 130:
  VERIFY(0 == nvlist_add_uint64(dummy, propname, 0));
  break;
 default:
  err = SET_ERROR(EINVAL);
  goto errout;
 }

 pair = nvlist_next_nvpair(dummy, ((void*)0));
 if (pair == ((void*)0)) {
  err = SET_ERROR(EINVAL);
 } else {
  err = zfs_prop_set_special(zc->zc_name, source, pair);
  if (err == -1)
   err = dsl_prop_inherit(zc->zc_name, zc->zc_value,
       source);
 }

errout:
 nvlist_free(dummy);
 return (err);
}
