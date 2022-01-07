
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
struct TYPE_15__ {TYPE_1__ member_0; } ;
typedef TYPE_4__ zio_cksum_t ;
struct TYPE_16__ {scalar_t__ zfs_type; int zfs_hdl; int zfs_name; } ;
typedef TYPE_5__ zfs_handle_t ;
typedef int nvlist_t ;
typedef int errbuf ;
struct TYPE_13__ {int drr_toname; int drr_versioninfo; int drr_magic; } ;
struct TYPE_14__ {TYPE_2__ drr_begin; } ;
struct TYPE_17__ {size_t drr_payloadlen; TYPE_3__ drr_u; int drr_type; int member_0; } ;
typedef TYPE_6__ dmu_replay_record_t ;
typedef scalar_t__ boolean_t ;
typedef int avl_tree_t ;


 int DMU_BACKUP_FEATURE_HOLDS ;
 int DMU_BACKUP_FEATURE_SA_SPILL ;
 int DMU_BACKUP_MAGIC ;
 int DMU_COMPOUNDSTREAM ;
 int DMU_SET_FEATUREFLAGS (int ,int) ;
 int DMU_SET_STREAM_HDRTYPE (int ,int ) ;
 int DRR_BEGIN ;
 int EZFS_BADBACKUP ;
 int NV_ENCODE_XDR ;
 int TEXT_DOMAIN ;
 int VERIFY0 (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_VERSION ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZPL_VERSION_SA ;
 char* dgettext (int ,char*) ;
 int dump_record (TYPE_6__*,char*,size_t,TYPE_4__*,int) ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int free (char*) ;
 int gather_nvlist (int ,char*,char const*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int **,int **) ;
 int nvlist_add_boolean (int *,char*) ;
 int nvlist_free (int *) ;
 int nvlist_pack (int *,char**,size_t*,int ,int ) ;
 int send_conclusion_record (int,TYPE_4__*) ;
 int snprintf (char*,int,char*,char*,...) ;
 char* strchr (char*,char) ;
 int strerror (int) ;
 int strlcpy (char*,int ,int) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_5__*,int ) ;

__attribute__((used)) static int
send_prelim_records(zfs_handle_t *zhp, const char *from, int fd,
    boolean_t gather_props, boolean_t recursive, boolean_t verbose,
    boolean_t dryrun, boolean_t raw, boolean_t replicate, boolean_t backup,
    boolean_t holds, boolean_t props, boolean_t doall,
    nvlist_t **fssp, avl_tree_t **fsavlp)
{
 int err = 0;
 char *packbuf = ((void*)0);
 size_t buflen = 0;
 zio_cksum_t zc = { {0} };
 int featureflags = 0;

 char tofs[ZFS_MAX_DATASET_NAME_LEN];

 char *tosnap = "";

 char errbuf[1024];
 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "warning: cannot send '%s'"), zhp->zfs_name);
 if (zhp->zfs_type == ZFS_TYPE_FILESYSTEM && zfs_prop_get_int(zhp,
     ZFS_PROP_VERSION) >= ZPL_VERSION_SA) {
  featureflags |= DMU_BACKUP_FEATURE_SA_SPILL;
 }

 if (holds)
  featureflags |= DMU_BACKUP_FEATURE_HOLDS;

 (void) strlcpy(tofs, zhp->zfs_name, ZFS_MAX_DATASET_NAME_LEN);
 char *at = strchr(tofs, '@');
 if (at != ((void*)0)) {
  *at = '\0';
  tosnap = at + 1;
 }

 if (gather_props) {
  nvlist_t *hdrnv = fnvlist_alloc();
  nvlist_t *fss = ((void*)0);

  if (from != ((void*)0))
   fnvlist_add_string(hdrnv, "fromsnap", from);
  fnvlist_add_string(hdrnv, "tosnap", tosnap);
  if (!recursive)
   fnvlist_add_boolean(hdrnv, "not_recursive");

  if (raw) {
   VERIFY0(nvlist_add_boolean(hdrnv, "raw"));
  }

  if ((err = gather_nvlist(zhp->zfs_hdl, tofs,
      from, tosnap, recursive, raw, doall, replicate, verbose,
      backup, holds, props, &fss, fsavlp)) != 0) {
   return (zfs_error(zhp->zfs_hdl, EZFS_BADBACKUP,
       errbuf));
  }
  fnvlist_add_nvlist(hdrnv, "fss", fss);
  VERIFY0(nvlist_pack(hdrnv, &packbuf, &buflen, NV_ENCODE_XDR,
      0));
  if (fssp != ((void*)0)) {
   *fssp = fss;
  } else {
   nvlist_free(fss);
  }
  nvlist_free(hdrnv);
 }

 if (!dryrun) {
  dmu_replay_record_t drr = { 0 };

  drr.drr_type = DRR_BEGIN;
  drr.drr_u.drr_begin.drr_magic = DMU_BACKUP_MAGIC;
  DMU_SET_STREAM_HDRTYPE(drr.drr_u.drr_begin.
      drr_versioninfo, DMU_COMPOUNDSTREAM);
  DMU_SET_FEATUREFLAGS(drr.drr_u.drr_begin.
      drr_versioninfo, featureflags);
  if (snprintf(drr.drr_u.drr_begin.drr_toname,
      sizeof (drr.drr_u.drr_begin.drr_toname), "%s@%s", tofs,
      tosnap) >= sizeof (drr.drr_u.drr_begin.drr_toname)) {
   return (zfs_error(zhp->zfs_hdl, EZFS_BADBACKUP,
       errbuf));
  }
  drr.drr_payloadlen = buflen;

  err = dump_record(&drr, packbuf, buflen, &zc, fd);
  free(packbuf);
  if (err != 0) {
   zfs_error_aux(zhp->zfs_hdl, strerror(err));
   return (zfs_error(zhp->zfs_hdl, EZFS_BADBACKUP,
       errbuf));
  }
  err = send_conclusion_record(fd, &zc);
  if (err != 0) {
   zfs_error_aux(zhp->zfs_hdl, strerror(err));
   return (zfs_error(zhp->zfs_hdl, EZFS_BADBACKUP,
       errbuf));
  }
 }
 return (0);
}
