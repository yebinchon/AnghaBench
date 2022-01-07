
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int member_0; } ;
typedef TYPE_1__ zfs_prop_t ;
struct TYPE_21__ {scalar_t__ zfs_type; int zfs_name; int zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_22__ {int cb_force; scalar_t__ cb_create; scalar_t__ cb_error; int cb_target; int member_0; } ;
typedef TYPE_3__ rollback_data_t ;
typedef int errbuf ;
typedef int boolean_t ;


 int B_FALSE ;



 int EZFS_BADTYPE ;
 int EZFS_EXISTS ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 TYPE_1__ ZFS_PROP_CREATETXG ;
 TYPE_1__ ZFS_PROP_VOLSIZE ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 int lzc_rollback_to (int ,int ) ;
 TYPE_2__* make_dataset_handle (int ,int ) ;
 int rollback_destroy ;
 int snprintf (char*,int,char*,int ) ;
 int zfs_close (TYPE_2__*) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,char*,int ,...) ;
 int zfs_iter_bookmarks (TYPE_2__*,int ,TYPE_3__*) ;
 int zfs_iter_snapshots (TYPE_2__*,int ,int ,TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_2__*,TYPE_1__) ;
 int zfs_prop_set_int (TYPE_2__*,TYPE_1__,scalar_t__) ;
 int zfs_standard_error (int ,int,char*) ;
 scalar_t__ zfs_which_resv_prop (TYPE_2__*,TYPE_1__*) ;

int
zfs_rollback(zfs_handle_t *zhp, zfs_handle_t *snap, boolean_t force)
{
 rollback_data_t cb = { 0 };
 int err;
 boolean_t restore_resv = 0;
 uint64_t old_volsize = 0, new_volsize;
 zfs_prop_t resv_prop = { 0 };
 uint64_t min_txg = 0;

 assert(zhp->zfs_type == ZFS_TYPE_FILESYSTEM ||
     zhp->zfs_type == ZFS_TYPE_VOLUME);




 cb.cb_force = force;
 cb.cb_target = snap->zfs_name;
 cb.cb_create = zfs_prop_get_int(snap, ZFS_PROP_CREATETXG);

 if (cb.cb_create > 0)
  min_txg = cb.cb_create;

 (void) zfs_iter_snapshots(zhp, B_FALSE, rollback_destroy, &cb,
     min_txg, 0);

 (void) zfs_iter_bookmarks(zhp, rollback_destroy, &cb);

 if (cb.cb_error)
  return (-1);






 if (zhp->zfs_type == ZFS_TYPE_VOLUME) {
  if (zfs_which_resv_prop(zhp, &resv_prop) < 0)
   return (-1);
  old_volsize = zfs_prop_get_int(zhp, ZFS_PROP_VOLSIZE);
  restore_resv =
      (old_volsize == zfs_prop_get_int(zhp, resv_prop));
 }






 err = lzc_rollback_to(zhp->zfs_name, snap->zfs_name);
 if (err != 0) {
  char errbuf[1024];

  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot rollback '%s'"),
      zhp->zfs_name);
  switch (err) {
  case 130:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "there is a snapshot or bookmark more recent "
       "than '%s'"), snap->zfs_name);
   (void) zfs_error(zhp->zfs_hdl, EZFS_EXISTS, errbuf);
   break;
  case 128:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "'%s' is not found among snapshots of '%s'"),
       snap->zfs_name, zhp->zfs_name);
   (void) zfs_error(zhp->zfs_hdl, EZFS_NOENT, errbuf);
   break;
  case 129:
   (void) zfs_error(zhp->zfs_hdl, EZFS_BADTYPE, errbuf);
   break;
  default:
   (void) zfs_standard_error(zhp->zfs_hdl, err, errbuf);
  }
  return (err);
 }







 if ((zhp->zfs_type == ZFS_TYPE_VOLUME) &&
     (zhp = make_dataset_handle(zhp->zfs_hdl, zhp->zfs_name))) {
  if (restore_resv) {
   new_volsize = zfs_prop_get_int(zhp, ZFS_PROP_VOLSIZE);
   if (old_volsize != new_volsize)
    err = zfs_prop_set_int(zhp, resv_prop,
        new_volsize);
  }
  zfs_close(zhp);
 }
 return (err);
}
