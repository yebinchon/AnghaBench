
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_4__ {scalar_t__ zfs_type; int zfs_name; int * zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ PROP_TYPE_STRING ;
 int VERIFY (int) ;
 scalar_t__ ZFS_PROP_QUOTA ;
 scalar_t__ ZFS_PROP_REFQUOTA ;
 scalar_t__ ZFS_PROP_REFRESERVATION ;
 scalar_t__ ZFS_PROP_RESERVATION ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_SOURCE ;
 int ZPROP_SOURCE_VAL_RECVD ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_add_string (int *,char*,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,char*,int ) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ strcmp (char*,int ) ;
 int verify (int) ;
 int * zfs_get_recvd_props (TYPE_1__*) ;
 scalar_t__ zfs_name_to_prop (char*) ;
 scalar_t__ zfs_prop_get_type (scalar_t__) ;
 scalar_t__ zfs_prop_readonly (scalar_t__) ;
 scalar_t__ zfs_prop_user (char*) ;

__attribute__((used)) static void
send_iterate_prop(zfs_handle_t *zhp, boolean_t received_only, nvlist_t *nv)
{
 nvlist_t *props = ((void*)0);
 nvpair_t *elem = ((void*)0);

 if (received_only)
  props = zfs_get_recvd_props(zhp);
 else
  props = zhp->zfs_props;

 while ((elem = nvlist_next_nvpair(props, elem)) != ((void*)0)) {
  char *propname = nvpair_name(elem);
  zfs_prop_t prop = zfs_name_to_prop(propname);
  nvlist_t *propnv;

  if (!zfs_prop_user(propname)) {
   if (prop == ZPROP_INVAL)
    continue;

   if (zfs_prop_readonly(prop))
    continue;
  }

  verify(nvpair_value_nvlist(elem, &propnv) == 0);
  if (prop == ZFS_PROP_QUOTA || prop == ZFS_PROP_RESERVATION ||
      prop == ZFS_PROP_REFQUOTA ||
      prop == ZFS_PROP_REFRESERVATION) {
   char *source;
   uint64_t value;
   verify(nvlist_lookup_uint64(propnv,
       ZPROP_VALUE, &value) == 0);
   if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT)
    continue;




   if (nvlist_lookup_string(propnv,
       ZPROP_SOURCE, &source) == 0) {
    if ((strcmp(source, zhp->zfs_name) != 0) &&
        (strcmp(source,
        ZPROP_SOURCE_VAL_RECVD) != 0))
     continue;
   }
  } else {
   char *source;
   if (nvlist_lookup_string(propnv,
       ZPROP_SOURCE, &source) != 0)
    continue;
   if ((strcmp(source, zhp->zfs_name) != 0) &&
       (strcmp(source, ZPROP_SOURCE_VAL_RECVD) != 0))
    continue;
  }

  if (zfs_prop_user(propname) ||
      zfs_prop_get_type(prop) == PROP_TYPE_STRING) {
   char *value;
   verify(nvlist_lookup_string(propnv,
       ZPROP_VALUE, &value) == 0);
   VERIFY(0 == nvlist_add_string(nv, propname, value));
  } else {
   uint64_t value;
   verify(nvlist_lookup_uint64(propnv,
       ZPROP_VALUE, &value) == 0);
   VERIFY(0 == nvlist_add_uint64(nv, propname, value));
  }
 }
}
