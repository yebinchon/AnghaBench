
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zprop_source_t ;
struct TYPE_5__ {scalar_t__ pl_prop; char* pl_user_prop; scalar_t__ pl_all; struct TYPE_5__* pl_next; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_6__ {int cb_literal; TYPE_1__* cb_proplist; } ;
typedef TYPE_2__ zprop_get_cbdata_t ;
typedef int zfs_handle_t ;
typedef int source ;
typedef int rbuf ;
typedef int nvlist_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ ZFS_PROP_NAME ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_SOURCE ;
 int ZPROP_SOURCE_VAL_RECVD ;
 int ZPROP_SRC_INHERITED ;
 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_NONE ;
 int ZPROP_SRC_RECEIVED ;
 int ZPROP_VALUE ;
 int fprintf (int ,char*,char*) ;
 char* gettext (char*) ;
 scalar_t__ is_recvd_column (TYPE_2__*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int verify (int) ;
 int zfs_get_name (int *) ;
 int * zfs_get_user_props (int *) ;
 scalar_t__ zfs_prop_get (int *,scalar_t__,char*,int,int *,char*,int,int ) ;
 scalar_t__ zfs_prop_get_recvd (int *,char*,char*,int,int ) ;
 scalar_t__ zfs_prop_get_userquota (int *,char*,char*,int,int ) ;
 scalar_t__ zfs_prop_get_written (int *,char*,char*,int,int ) ;
 char* zfs_prop_to_name (scalar_t__) ;
 scalar_t__ zfs_prop_userquota (char*) ;
 int zfs_prop_valid_for_type (scalar_t__,int ,int ) ;
 scalar_t__ zfs_prop_written (char*) ;
 int zprop_print_one_property (int ,TYPE_2__*,char*,char*,int ,char*,char*) ;

__attribute__((used)) static int
get_callback(zfs_handle_t *zhp, void *data)
{
 char buf[ZFS_MAXPROPLEN];
 char rbuf[ZFS_MAXPROPLEN];
 zprop_source_t sourcetype;
 char source[ZFS_MAX_DATASET_NAME_LEN];
 zprop_get_cbdata_t *cbp = data;
 nvlist_t *user_props = zfs_get_user_props(zhp);
 zprop_list_t *pl = cbp->cb_proplist;
 nvlist_t *propval;
 char *strval;
 char *sourceval;
 boolean_t received = is_recvd_column(cbp);

 for (; pl != ((void*)0); pl = pl->pl_next) {
  char *recvdval = ((void*)0);




  if (pl->pl_prop == ZFS_PROP_NAME &&
      pl == cbp->cb_proplist)
   continue;

  if (pl->pl_prop != ZPROP_INVAL) {
   if (zfs_prop_get(zhp, pl->pl_prop, buf,
       sizeof (buf), &sourcetype, source,
       sizeof (source),
       cbp->cb_literal) != 0) {
    if (pl->pl_all)
     continue;
    if (!zfs_prop_valid_for_type(pl->pl_prop,
        ZFS_TYPE_DATASET, B_FALSE)) {
     (void) fprintf(stderr,
         gettext("No such property '%s'\n"),
         zfs_prop_to_name(pl->pl_prop));
     continue;
    }
    sourcetype = ZPROP_SRC_NONE;
    (void) strlcpy(buf, "-", sizeof (buf));
   }

   if (received && (zfs_prop_get_recvd(zhp,
       zfs_prop_to_name(pl->pl_prop), rbuf, sizeof (rbuf),
       cbp->cb_literal) == 0))
    recvdval = rbuf;

   zprop_print_one_property(zfs_get_name(zhp), cbp,
       zfs_prop_to_name(pl->pl_prop),
       buf, sourcetype, source, recvdval);
  } else if (zfs_prop_userquota(pl->pl_user_prop)) {
   sourcetype = ZPROP_SRC_LOCAL;

   if (zfs_prop_get_userquota(zhp, pl->pl_user_prop,
       buf, sizeof (buf), cbp->cb_literal) != 0) {
    sourcetype = ZPROP_SRC_NONE;
    (void) strlcpy(buf, "-", sizeof (buf));
   }

   zprop_print_one_property(zfs_get_name(zhp), cbp,
       pl->pl_user_prop, buf, sourcetype, source, ((void*)0));
  } else if (zfs_prop_written(pl->pl_user_prop)) {
   sourcetype = ZPROP_SRC_LOCAL;

   if (zfs_prop_get_written(zhp, pl->pl_user_prop,
       buf, sizeof (buf), cbp->cb_literal) != 0) {
    sourcetype = ZPROP_SRC_NONE;
    (void) strlcpy(buf, "-", sizeof (buf));
   }

   zprop_print_one_property(zfs_get_name(zhp), cbp,
       pl->pl_user_prop, buf, sourcetype, source, ((void*)0));
  } else {
   if (nvlist_lookup_nvlist(user_props,
       pl->pl_user_prop, &propval) != 0) {
    if (pl->pl_all)
     continue;
    sourcetype = ZPROP_SRC_NONE;
    strval = "-";
   } else {
    verify(nvlist_lookup_string(propval,
        ZPROP_VALUE, &strval) == 0);
    verify(nvlist_lookup_string(propval,
        ZPROP_SOURCE, &sourceval) == 0);

    if (strcmp(sourceval,
        zfs_get_name(zhp)) == 0) {
     sourcetype = ZPROP_SRC_LOCAL;
    } else if (strcmp(sourceval,
        ZPROP_SOURCE_VAL_RECVD) == 0) {
     sourcetype = ZPROP_SRC_RECEIVED;
    } else {
     sourcetype = ZPROP_SRC_INHERITED;
     (void) strlcpy(source,
         sourceval, sizeof (source));
    }
   }

   if (received && (zfs_prop_get_recvd(zhp,
       pl->pl_user_prop, rbuf, sizeof (rbuf),
       cbp->cb_literal) == 0))
    recvdval = rbuf;

   zprop_print_one_property(zfs_get_name(zhp), cbp,
       pl->pl_user_prop, strval, sourcetype,
       source, recvdval);
  }
 }

 return (0);
}
