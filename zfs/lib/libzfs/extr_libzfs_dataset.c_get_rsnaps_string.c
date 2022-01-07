
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int nvlist_t ;
typedef int buf ;


 int ZFS_PROP_REDACT_SNAPS ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,scalar_t__*) ;
 int snprintf (char*,int,char*,...) ;
 int strlcat (char*,char*,size_t) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
get_rsnaps_string(zfs_handle_t *zhp, char *propbuf, size_t proplen)
{
 nvlist_t *value;
 uint64_t *snaps;
 uint_t nsnaps;

 if (nvlist_lookup_nvlist(zhp->zfs_props,
     zfs_prop_to_name(ZFS_PROP_REDACT_SNAPS), &value) != 0)
  return (-1);
 if (nvlist_lookup_uint64_array(value, ZPROP_VALUE, &snaps,
     &nsnaps) != 0)
  return (-1);
 if (nsnaps == 0) {

  (void) snprintf(propbuf, proplen, "none");
  return (0);
 }
 propbuf[0] = '\0';
 for (int i = 0; i < nsnaps; i++) {
  char buf[128];
  if (propbuf[0] != '\0')
   (void) strlcat(propbuf, ",", proplen);
  (void) snprintf(buf, sizeof (buf), "%llu",
      (u_longlong_t)snaps[i]);
  (void) strlcat(propbuf, buf, proplen);
 }

 return (0);
}
