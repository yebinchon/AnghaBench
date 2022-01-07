
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ zpl_dir_context_t ;
typedef int zfsvfs_t ;
struct file {int dummy; } ;


 int DT_DIR ;
 int * ITOZSB (int ) ;
 int ZFSCTL_INO_SHARES ;
 int ZFSCTL_INO_SNAPDIR ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_SHAREDIR_NAME ;
 int ZFS_SNAPDIR_NAME ;
 int file_inode (struct file*) ;
 int strlen (int ) ;
 int zpl_dir_emit (TYPE_1__*,int ,int ,int ,int ) ;
 int zpl_dir_emit_dots (struct file*,TYPE_1__*) ;

__attribute__((used)) static int
zpl_root_iterate(struct file *filp, zpl_dir_context_t *ctx)
{
 zfsvfs_t *zfsvfs = ITOZSB(file_inode(filp));
 int error = 0;

 ZFS_ENTER(zfsvfs);

 if (!zpl_dir_emit_dots(filp, ctx))
  goto out;

 if (ctx->pos == 2) {
  if (!zpl_dir_emit(ctx, ZFS_SNAPDIR_NAME,
      strlen(ZFS_SNAPDIR_NAME), ZFSCTL_INO_SNAPDIR, DT_DIR))
   goto out;

  ctx->pos++;
 }

 if (ctx->pos == 3) {
  if (!zpl_dir_emit(ctx, ZFS_SHAREDIR_NAME,
      strlen(ZFS_SHAREDIR_NAME), ZFSCTL_INO_SHARES, DT_DIR))
   goto out;

  ctx->pos++;
 }
out:
 ZFS_EXIT(zfsvfs);

 return (error);
}
