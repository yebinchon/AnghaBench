
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int zio_cksum_t ;
typedef int zfs_handle_t ;
typedef int uint64_t ;
typedef int tofs ;
struct drr_begin {scalar_t__ drr_magic; char* drr_toname; int drr_versioninfo; } ;
typedef int sendfs ;
struct TYPE_14__ {int nomount; int dryrun; scalar_t__ istail; scalar_t__ isprefix; int byteswap; } ;
typedef TYPE_3__ recvflags_t ;
typedef int prop_changelist_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int drre ;
struct TYPE_11__ {void** zc_word; } ;
struct TYPE_12__ {TYPE_10__ drr_checksum; } ;
struct TYPE_13__ {struct drr_begin drr_begin; TYPE_1__ drr_end; } ;
struct TYPE_15__ {scalar_t__ drr_type; scalar_t__ drr_payloadlen; TYPE_2__ drr_u; } ;
typedef TYPE_4__ dmu_replay_record_t ;
typedef int boolean_t ;
typedef int avl_tree_t ;


 scalar_t__ BSWAP_32 (scalar_t__) ;
 void* BSWAP_64 (void*) ;
 int B_FALSE ;
 scalar_t__ DMU_BACKUP_MAGIC ;
 scalar_t__ DMU_COMPOUNDSTREAM ;
 scalar_t__ DMU_GET_STREAM_HDRTYPE (int ) ;
 scalar_t__ DRR_BEGIN ;
 scalar_t__ DRR_END ;
 int ENODATA ;
 scalar_t__ ENOENT ;
 int EZFS_BADSTREAM ;
 int EZFS_NOMEM ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZIO_CHECKSUM_EQUAL (TYPE_10__,int ) ;
 int assert (int) ;
 int changelist_free (int *) ;
 int * changelist_gather (int *,int ,int ,int ) ;
 int changelist_prefix (int *) ;
 char* dgettext (int ,char*) ;
 int * fsavl_create (int *) ;
 int fsavl_destroy (int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_boolean (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int recv_fix_encryption_hierarchy (int *,char*,int *,int *) ;
 int recv_incremental_replication (int *,char*,TYPE_3__*,int *,int *,int *) ;
 int recv_read (int *,int,TYPE_4__*,int,int ,int *) ;
 int recv_read_nvlist (int *,int,scalar_t__,int **,int ,int *) ;
 int snprintf (char*,int,char*) ;
 char* strchr (char const*,char) ;
 int strcspn (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 int zfs_close (int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int * zfs_open (int *,int ,int ) ;
 int zfs_receive_impl (int *,char const*,int *,TYPE_3__*,int,char*,int *,int *,char**,int,int *,char*,int *) ;

__attribute__((used)) static int
zfs_receive_package(libzfs_handle_t *hdl, int fd, const char *destname,
    recvflags_t *flags, dmu_replay_record_t *drr, zio_cksum_t *zc,
    char **top_zfs, int cleanup_fd, uint64_t *action_handlep,
    nvlist_t *cmdprops)
{
 nvlist_t *stream_nv = ((void*)0);
 avl_tree_t *stream_avl = ((void*)0);
 char *fromsnap = ((void*)0);
 char *sendsnap = ((void*)0);
 char *cp;
 char tofs[ZFS_MAX_DATASET_NAME_LEN];
 char sendfs[ZFS_MAX_DATASET_NAME_LEN];
 char errbuf[1024];
 dmu_replay_record_t drre;
 int error;
 boolean_t anyerr = B_FALSE;
 boolean_t softerr = B_FALSE;
 boolean_t recursive, raw;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot receive"));

 assert(drr->drr_type == DRR_BEGIN);
 assert(drr->drr_u.drr_begin.drr_magic == DMU_BACKUP_MAGIC);
 assert(DMU_GET_STREAM_HDRTYPE(drr->drr_u.drr_begin.drr_versioninfo) ==
     DMU_COMPOUNDSTREAM);




 if (drr->drr_payloadlen != 0) {
  error = recv_read_nvlist(hdl, fd, drr->drr_payloadlen,
      &stream_nv, flags->byteswap, zc);
  if (error) {
   error = zfs_error(hdl, EZFS_BADSTREAM, errbuf);
   goto out;
  }
 }

 recursive = (nvlist_lookup_boolean(stream_nv, "not_recursive") ==
     ENOENT);
 raw = (nvlist_lookup_boolean(stream_nv, "raw") == 0);

 if (recursive && strchr(destname, '@')) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "cannot specify snapshot name for multi-snapshot stream"));
  error = zfs_error(hdl, EZFS_BADSTREAM, errbuf);
  goto out;
 }




 if (0 != (error = recv_read(hdl, fd, &drre, sizeof (drre),
     flags->byteswap, ((void*)0))))
  goto out;
 if (flags->byteswap) {
  drre.drr_type = BSWAP_32(drre.drr_type);
  drre.drr_u.drr_end.drr_checksum.zc_word[0] =
      BSWAP_64(drre.drr_u.drr_end.drr_checksum.zc_word[0]);
  drre.drr_u.drr_end.drr_checksum.zc_word[1] =
      BSWAP_64(drre.drr_u.drr_end.drr_checksum.zc_word[1]);
  drre.drr_u.drr_end.drr_checksum.zc_word[2] =
      BSWAP_64(drre.drr_u.drr_end.drr_checksum.zc_word[2]);
  drre.drr_u.drr_end.drr_checksum.zc_word[3] =
      BSWAP_64(drre.drr_u.drr_end.drr_checksum.zc_word[3]);
 }
 if (drre.drr_type != DRR_END) {
  error = zfs_error(hdl, EZFS_BADSTREAM, errbuf);
  goto out;
 }
 if (!ZIO_CHECKSUM_EQUAL(drre.drr_u.drr_end.drr_checksum, *zc)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "incorrect header checksum"));
  error = zfs_error(hdl, EZFS_BADSTREAM, errbuf);
  goto out;
 }

 (void) nvlist_lookup_string(stream_nv, "fromsnap", &fromsnap);

 if (drr->drr_payloadlen != 0) {
  nvlist_t *stream_fss;

  VERIFY(0 == nvlist_lookup_nvlist(stream_nv, "fss",
      &stream_fss));
  if ((stream_avl = fsavl_create(stream_fss)) == ((void*)0)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "couldn't allocate avl tree"));
   error = zfs_error(hdl, EZFS_NOMEM, errbuf);
   goto out;
  }

  if (fromsnap != ((void*)0) && recursive) {
   nvlist_t *renamed = ((void*)0);
   nvpair_t *pair = ((void*)0);

   (void) strlcpy(tofs, destname, sizeof (tofs));
   if (flags->isprefix) {
    struct drr_begin *drrb = &drr->drr_u.drr_begin;
    int i;

    if (flags->istail) {
     cp = strrchr(drrb->drr_toname, '/');
     if (cp == ((void*)0)) {
      (void) strlcat(tofs, "/",
          sizeof (tofs));
      i = 0;
     } else {
      i = (cp - drrb->drr_toname);
     }
    } else {
     i = strcspn(drrb->drr_toname, "/@");
    }

    (void) strlcat(tofs, &drrb->drr_toname[i],
        sizeof (tofs));
    *strchr(tofs, '@') = '\0';
   }

   if (!flags->dryrun && !flags->nomount) {
    VERIFY(0 == nvlist_alloc(&renamed,
        NV_UNIQUE_NAME, 0));
   }

   softerr = recv_incremental_replication(hdl, tofs, flags,
       stream_nv, stream_avl, renamed);


   while ((pair = nvlist_next_nvpair(renamed,
       pair)) != ((void*)0)) {
    zfs_handle_t *zhp;
    prop_changelist_t *clp = ((void*)0);

    zhp = zfs_open(hdl, nvpair_name(pair),
        ZFS_TYPE_FILESYSTEM);
    if (zhp != ((void*)0)) {
     clp = changelist_gather(zhp,
         ZFS_PROP_MOUNTPOINT, 0, 0);
     zfs_close(zhp);
     if (clp != ((void*)0)) {
      softerr |=
          changelist_prefix(clp);
      changelist_free(clp);
     }
    }
   }

   nvlist_free(renamed);
  }
 }






 (void) strlcpy(sendfs, drr->drr_u.drr_begin.drr_toname,
     sizeof (sendfs));
 if ((cp = strchr(sendfs, '@')) != ((void*)0)) {
  *cp = '\0';






  sendsnap = (cp + 1);
 }


 do {







  error = zfs_receive_impl(hdl, destname, ((void*)0), flags, fd,
      sendfs, stream_nv, stream_avl, top_zfs, cleanup_fd,
      action_handlep, sendsnap, cmdprops);
  if (error == ENODATA) {
   error = 0;
   break;
  }
  anyerr |= error;
 } while (error == 0);

 if (drr->drr_payloadlen != 0 && recursive && fromsnap != ((void*)0)) {




  softerr = recv_incremental_replication(hdl, tofs, flags,
      stream_nv, stream_avl, ((void*)0));
 }

 if (raw && softerr == 0 && *top_zfs != ((void*)0)) {
  softerr = recv_fix_encryption_hierarchy(hdl, *top_zfs,
      stream_nv, stream_avl);
 }

out:
 fsavl_destroy(stream_avl);
 nvlist_free(stream_nv);
 if (softerr)
  error = -2;
 if (anyerr)
  error = -1;
 return (error);
}
