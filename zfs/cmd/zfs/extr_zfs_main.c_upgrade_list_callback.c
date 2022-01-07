
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {scalar_t__ cb_foundone; scalar_t__ cb_newer; } ;
typedef TYPE_1__ upgrade_cbdata_t ;


 scalar_t__ B_TRUE ;
 int ZFS_PROP_VERSION ;
 int ZPL_VERSION ;
 char* gettext (char*) ;
 int printf (char*,...) ;
 int puts (char*) ;
 char* zfs_get_name (int *) ;
 int zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
upgrade_list_callback(zfs_handle_t *zhp, void *data)
{
 upgrade_cbdata_t *cb = data;
 int version = zfs_prop_get_int(zhp, ZFS_PROP_VERSION);


 if ((!cb->cb_newer && version < ZPL_VERSION) ||
     (cb->cb_newer && version > ZPL_VERSION)) {
  char *str;
  if (cb->cb_newer) {
   str = gettext("The following filesystems are "
       "formatted using a newer software version and\n"
       "cannot be accessed on the current system.\n\n");
  } else {
   str = gettext("The following filesystems are "
       "out of date, and can be upgraded.  After being\n"
       "upgraded, these filesystems (and any 'zfs send' "
       "streams generated from\n"
       "subsequent snapshots) will no longer be "
       "accessible by older software versions.\n\n");
  }

  if (!cb->cb_foundone) {
   (void) puts(str);
   (void) printf(gettext("VER  FILESYSTEM\n"));
   (void) printf(gettext("---  ------------\n"));
   cb->cb_foundone = B_TRUE;
  }

  (void) printf("%2u   %s\n", version, zfs_get_name(zhp));
 }

 return (0);
}
