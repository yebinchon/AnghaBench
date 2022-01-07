
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct inode {TYPE_2__* i_sb; } ;
typedef int pathname_t ;
typedef int cred_t ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOENT ;
 int * ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 int ZFSCTL_INO_SHARES ;
 int ZFSCTL_INO_SNAPDIR ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 char* ZFS_SHAREDIR_NAME ;
 char* ZFS_SNAPDIR_NAME ;
 scalar_t__ strcmp (char*,char*) ;
 struct inode* zfsctl_inode_lookup (int *,int ,int *,int *) ;
 int zpl_fops_shares ;
 int zpl_fops_snapdir ;
 int zpl_ops_shares ;
 int zpl_ops_snapdir ;

int
zfsctl_root_lookup(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 int error = 0;

 ZFS_ENTER(zfsvfs);

 if (strcmp(name, "..") == 0) {
  *ipp = dip->i_sb->s_root->d_inode;
 } else if (strcmp(name, ZFS_SNAPDIR_NAME) == 0) {
  *ipp = zfsctl_inode_lookup(zfsvfs, ZFSCTL_INO_SNAPDIR,
      &zpl_fops_snapdir, &zpl_ops_snapdir);
 } else if (strcmp(name, ZFS_SHAREDIR_NAME) == 0) {
  *ipp = zfsctl_inode_lookup(zfsvfs, ZFSCTL_INO_SHARES,
      &zpl_fops_shares, &zpl_ops_shares);
 } else {
  *ipp = ((void*)0);
 }

 if (*ipp == ((void*)0))
  error = SET_ERROR(ENOENT);

 ZFS_EXIT(zfsvfs);

 return (error);
}
