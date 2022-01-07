
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int z_zn_prefetch; int z_parent_lock; int z_id; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_18__ {int z_ctldir; struct TYPE_18__* z_parent; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
typedef int uint64_t ;
struct inode {int dummy; } ;
struct TYPE_19__ {int pn_bufsize; int pn_buf; } ;
typedef TYPE_3__ pathname_t ;
typedef int parent ;


 int B_TRUE ;
 int FIGNORECASE ;
 int RW_READER ;
 int SA_ZPL_PARENT (TYPE_2__*) ;
 int ZCILOOK ;
 int ZEXISTS ;
 int ZFS_CTLDIR_NAME ;
 int ZSHARED ;
 struct inode* ZTOI (TYPE_1__*) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int igrab (struct inode*) ;
 int kcred ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int sa_lookup (int ,int ,int *,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (int ,char*,int ) ;
 int zfs_dirent_lock (int **,TYPE_1__*,char*,TYPE_1__**,int,int*,TYPE_3__*) ;
 int zfs_dirent_unlock (int *) ;
 scalar_t__ zfs_has_ctldir (TYPE_1__*) ;
 int zfs_zget (TYPE_2__*,int ,TYPE_1__**) ;
 struct inode* zfsctl_root (TYPE_1__*) ;
 int zfsctl_root_lookup (int ,char*,struct inode**,int ,int ,int *,int *) ;

int
zfs_dirlook(znode_t *dzp, char *name, struct inode **ipp, int flags,
    int *deflg, pathname_t *rpnp)
{
 zfs_dirlock_t *dl;
 znode_t *zp;
 int error = 0;
 uint64_t parent;

 if (name[0] == 0 || (name[0] == '.' && name[1] == 0)) {
  *ipp = ZTOI(dzp);
  igrab(*ipp);
 } else if (name[0] == '.' && name[1] == '.' && name[2] == 0) {
  zfsvfs_t *zfsvfs = ZTOZSB(dzp);





  if ((error = sa_lookup(dzp->z_sa_hdl,
      SA_ZPL_PARENT(zfsvfs), &parent, sizeof (parent))) != 0)
   return (error);

  if (parent == dzp->z_id && zfsvfs->z_parent != zfsvfs) {
   error = zfsctl_root_lookup(zfsvfs->z_parent->z_ctldir,
       "snapshot", ipp, 0, kcred, ((void*)0), ((void*)0));
   return (error);
  }
  rw_enter(&dzp->z_parent_lock, RW_READER);
  error = zfs_zget(zfsvfs, parent, &zp);
  if (error == 0)
   *ipp = ZTOI(zp);
  rw_exit(&dzp->z_parent_lock);
 } else if (zfs_has_ctldir(dzp) && strcmp(name, ZFS_CTLDIR_NAME) == 0) {
  *ipp = zfsctl_root(dzp);
 } else {
  int zf;

  zf = ZEXISTS | ZSHARED;
  if (flags & FIGNORECASE)
   zf |= ZCILOOK;

  error = zfs_dirent_lock(&dl, dzp, name, &zp, zf, deflg, rpnp);
  if (error == 0) {
   *ipp = ZTOI(zp);
   zfs_dirent_unlock(dl);
   dzp->z_zn_prefetch = B_TRUE;
  }
  rpnp = ((void*)0);
 }

 if ((flags & FIGNORECASE) && rpnp && !error)
  (void) strlcpy(rpnp->pn_buf, name, rpnp->pn_bufsize);

 return (error);
}
