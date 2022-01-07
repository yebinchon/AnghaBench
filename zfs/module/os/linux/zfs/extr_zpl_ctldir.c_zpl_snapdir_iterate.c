
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pos; } ;
typedef TYPE_1__ zpl_dir_context_t ;
struct TYPE_10__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct file {int dummy; } ;
typedef int fstrans_cookie_t ;
typedef int boolean_t ;


 int DT_DIR ;
 int ENOENT ;
 int FTAG ;
 TYPE_2__* ITOZSB (int ) ;
 int MAXNAMELEN ;
 scalar_t__ ZFSCTL_INO_SHARES ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int dmu_objset_pool (int ) ;
 int dmu_snapshot_list_next (int ,int,char*,scalar_t__*,scalar_t__*,int *) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 int file_inode (struct file*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int strlen (char*) ;
 int zpl_dir_emit (TYPE_1__*,char*,int ,scalar_t__,int ) ;
 int zpl_dir_emit_dots (struct file*,TYPE_1__*) ;

__attribute__((used)) static int
zpl_snapdir_iterate(struct file *filp, zpl_dir_context_t *ctx)
{
 zfsvfs_t *zfsvfs = ITOZSB(file_inode(filp));
 fstrans_cookie_t cookie;
 char snapname[MAXNAMELEN];
 boolean_t case_conflict;
 uint64_t id, pos;
 int error = 0;

 ZFS_ENTER(zfsvfs);
 cookie = spl_fstrans_mark();

 if (!zpl_dir_emit_dots(filp, ctx))
  goto out;

 pos = ctx->pos;
 while (error == 0) {
  dsl_pool_config_enter(dmu_objset_pool(zfsvfs->z_os), FTAG);
  error = -dmu_snapshot_list_next(zfsvfs->z_os, MAXNAMELEN,
      snapname, &id, &pos, &case_conflict);
  dsl_pool_config_exit(dmu_objset_pool(zfsvfs->z_os), FTAG);
  if (error)
   goto out;

  if (!zpl_dir_emit(ctx, snapname, strlen(snapname),
      ZFSCTL_INO_SHARES - id, DT_DIR))
   goto out;

  ctx->pos = pos;
 }
out:
 spl_fstrans_unmark(cookie);
 ZFS_EXIT(zfsvfs);

 if (error == -ENOENT)
  return (0);

 return (error);
}
