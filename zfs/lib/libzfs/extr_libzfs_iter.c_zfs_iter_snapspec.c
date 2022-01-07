
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_10__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {int (* ssa_func ) (TYPE_1__*,void*) ;char* ssa_first; char* ssa_last; int ssa_seenlast; int ssa_seenfirst; void* ssa_arg; int member_0; } ;
typedef TYPE_3__ snapspec_arg_t ;
typedef int snapname ;


 int B_TRUE ;
 int ENOENT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_SNAPSHOT ;
 int free (char*) ;
 TYPE_1__* make_dataset_handle (int ,char*) ;
 int snapspec_cb ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;
 int zfs_dataset_exists (int ,char*,int ) ;
 char* zfs_get_name (TYPE_1__*) ;
 int zfs_iter_snapshots_sorted (TYPE_1__*,int ,TYPE_3__*,int ,int ) ;
 char* zfs_strdup (int ,char const*) ;

int
zfs_iter_snapspec(zfs_handle_t *fs_zhp, const char *spec_orig,
    zfs_iter_f func, void *arg)
{
 char *buf, *comma_separated, *cp;
 int err = 0;
 int ret = 0;

 buf = zfs_strdup(fs_zhp->zfs_hdl, spec_orig);
 cp = buf;

 while ((comma_separated = strsep(&cp, ",")) != ((void*)0)) {
  char *pct = strchr(comma_separated, '%');
  if (pct != ((void*)0)) {
   snapspec_arg_t ssa = { 0 };
   ssa.ssa_func = func;
   ssa.ssa_arg = arg;

   if (pct == comma_separated)
    ssa.ssa_seenfirst = B_TRUE;
   else
    ssa.ssa_first = comma_separated;
   *pct = '\0';
   ssa.ssa_last = pct + 1;





   if (ssa.ssa_last[0] != '\0') {
    char snapname[ZFS_MAX_DATASET_NAME_LEN];
    (void) snprintf(snapname, sizeof (snapname),
        "%s@%s", zfs_get_name(fs_zhp),
        ssa.ssa_last);
    if (!zfs_dataset_exists(fs_zhp->zfs_hdl,
        snapname, ZFS_TYPE_SNAPSHOT)) {
     ret = ENOENT;
     continue;
    }
   }

   err = zfs_iter_snapshots_sorted(fs_zhp,
       snapspec_cb, &ssa, 0, 0);
   if (ret == 0)
    ret = err;
   if (ret == 0 && (!ssa.ssa_seenfirst ||
       (ssa.ssa_last[0] != '\0' && !ssa.ssa_seenlast))) {
    ret = ENOENT;
   }
  } else {
   char snapname[ZFS_MAX_DATASET_NAME_LEN];
   zfs_handle_t *snap_zhp;
   (void) snprintf(snapname, sizeof (snapname), "%s@%s",
       zfs_get_name(fs_zhp), comma_separated);
   snap_zhp = make_dataset_handle(fs_zhp->zfs_hdl,
       snapname);
   if (snap_zhp == ((void*)0)) {
    ret = ENOENT;
    continue;
   }
   err = func(snap_zhp, arg);
   if (ret == 0)
    ret = err;
  }
 }

 free(buf);
 return (ret);
}
