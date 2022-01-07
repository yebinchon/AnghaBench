
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* dds_origin; } ;
struct TYPE_11__ {TYPE_1__ zfs_dmustats; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int keylocation ;
typedef int boolean_t ;
typedef int avl_tree_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DCP_CMD_FORCE_INHERIT ;
 int DCP_CMD_FORCE_NEW_KEY ;
 int ENOENT ;
 int MAXNAMELEN ;
 int VERIFY (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZIO_CRYPT_OFF ;
 int guid_to_name (int *,char const*,scalar_t__,int ,char*) ;
 int lzc_change_key (char*,int ,int *,int *,int ) ;
 int nvlist_exists (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ nvpair_value_uint64 (int *,scalar_t__*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zfs_close (TYPE_2__*) ;
 int zfs_crypto_get_encryption_root (TYPE_2__*,int*,int *) ;
 TYPE_2__* zfs_open (int *,char*,int ) ;
 int zfs_prop_get (TYPE_2__*,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_2__*,int ) ;
 int zfs_prop_set (TYPE_2__*,int ,char*) ;
 int zfs_prop_to_name (int ) ;
 int zfs_refresh_properties (TYPE_2__*) ;

__attribute__((used)) static int
recv_fix_encryption_hierarchy(libzfs_handle_t *hdl, const char *top_zfs,
    nvlist_t *stream_nv, avl_tree_t *stream_avl)
{
 int err;
 nvpair_t *fselem = ((void*)0);
 nvlist_t *stream_fss;

 VERIFY(0 == nvlist_lookup_nvlist(stream_nv, "fss", &stream_fss));

 while ((fselem = nvlist_next_nvpair(stream_fss, fselem)) != ((void*)0)) {
  zfs_handle_t *zhp = ((void*)0);
  uint64_t crypt;
  nvlist_t *snaps, *props, *stream_nvfs = ((void*)0);
  nvpair_t *snapel = ((void*)0);
  boolean_t is_encroot, is_clone, stream_encroot;
  char *cp;
  char *stream_keylocation = ((void*)0);
  char keylocation[MAXNAMELEN];
  char fsname[ZFS_MAX_DATASET_NAME_LEN];

  keylocation[0] = '\0';
  VERIFY(0 == nvpair_value_nvlist(fselem, &stream_nvfs));
  VERIFY(0 == nvlist_lookup_nvlist(stream_nvfs, "snaps", &snaps));
  VERIFY(0 == nvlist_lookup_nvlist(stream_nvfs, "props", &props));
  stream_encroot = nvlist_exists(stream_nvfs, "is_encroot");


  err = ENOENT;
  while ((snapel = nvlist_next_nvpair(snaps, snapel)) != ((void*)0)) {
   uint64_t guid;

   VERIFY(0 == nvpair_value_uint64(snapel, &guid));
   err = guid_to_name(hdl, top_zfs, guid, B_FALSE,
       fsname);
   if (err == 0)
    break;
  }

  if (err != 0)
   continue;

  cp = strchr(fsname, '@');
  if (cp != ((void*)0))
   *cp = '\0';

  zhp = zfs_open(hdl, fsname, ZFS_TYPE_DATASET);
  if (zhp == ((void*)0)) {
   err = ENOENT;
   goto error;
  }

  crypt = zfs_prop_get_int(zhp, ZFS_PROP_ENCRYPTION);
  is_clone = zhp->zfs_dmustats.dds_origin[0] != '\0';
  (void) zfs_crypto_get_encryption_root(zhp, &is_encroot, ((void*)0));


  if (crypt == ZIO_CRYPT_OFF) {
   zfs_close(zhp);
   continue;
  }






  if (stream_encroot) {
   if (!is_clone && !is_encroot) {
    err = lzc_change_key(fsname,
        DCP_CMD_FORCE_NEW_KEY, ((void*)0), ((void*)0), 0);
    if (err != 0) {
     zfs_close(zhp);
     goto error;
    }
   }

   VERIFY(0 == nvlist_lookup_string(props,
       zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
       &stream_keylocation));





   zfs_refresh_properties(zhp);
   err = zfs_prop_get(zhp, ZFS_PROP_KEYLOCATION,
       keylocation, sizeof (keylocation), ((void*)0), ((void*)0),
       0, B_TRUE);
   if (err != 0) {
    zfs_close(zhp);
    goto error;
   }

   if (strcmp(keylocation, stream_keylocation) != 0) {
    err = zfs_prop_set(zhp,
        zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
        stream_keylocation);
    if (err != 0) {
     zfs_close(zhp);
     goto error;
    }
   }
  }







  if (!stream_encroot && is_encroot &&
      strcmp(top_zfs, fsname) != 0) {
   err = lzc_change_key(fsname, DCP_CMD_FORCE_INHERIT,
       ((void*)0), ((void*)0), 0);
   if (err != 0) {
    zfs_close(zhp);
    goto error;
   }
  }

  zfs_close(zhp);
 }

 return (0);

error:
 return (err);
}
