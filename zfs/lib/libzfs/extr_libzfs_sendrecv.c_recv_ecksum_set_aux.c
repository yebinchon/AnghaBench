
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int token_buf ;
typedef int target_fs ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int TEXT_DOMAIN ;
 int ZFS_MAXPROPLEN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_RECEIVE_RESUME_TOKEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int dgettext (int ,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int zfs_close (int *) ;
 int zfs_error_aux (int *,int ,...) ;
 int * zfs_open (int *,char*,int) ;
 int zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static void
recv_ecksum_set_aux(libzfs_handle_t *hdl, const char *target_snap,
    boolean_t resumable)
{
 char target_fs[ZFS_MAX_DATASET_NAME_LEN];

 zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
     "checksum mismatch or incomplete stream"));

 if (!resumable)
  return;
 (void) strlcpy(target_fs, target_snap, sizeof (target_fs));
 *strchr(target_fs, '@') = '\0';
 zfs_handle_t *zhp = zfs_open(hdl, target_fs,
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
 if (zhp == ((void*)0))
  return;

 char token_buf[ZFS_MAXPROPLEN];
 int error = zfs_prop_get(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
     token_buf, sizeof (token_buf),
     ((void*)0), ((void*)0), 0, B_TRUE);
 if (error == 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "checksum mismatch or incomplete stream.\n"
      "Partially received snapshot is saved.\n"
      "A resuming stream can be generated on the sending "
      "system by running:\n"
      "    zfs send -t %s"),
      token_buf);
 }
 zfs_close(zhp);
}
