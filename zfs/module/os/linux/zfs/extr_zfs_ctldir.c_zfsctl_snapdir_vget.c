
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct super_block {int s_fs_info; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 int IS_ERR (struct dentry*) ;
 int KM_SLEEP ;
 int LOOKUP_DIRECTORY ;
 int LOOKUP_FOLLOW ;
 int MAXPATHLEN ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFSCTL_INO_SNAPDIRS ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int dput (struct dentry*) ;
 int igrab (struct inode*) ;
 struct inode* ilookup (struct super_block*,scalar_t__) ;
 int iput (struct inode*) ;
 int kern_path (char*,int,struct path*) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int path_put (struct path*) ;
 int zfsctl_snapshot_path_objset (int ,scalar_t__,int ,char*) ;

int
zfsctl_snapdir_vget(struct super_block *sb, uint64_t objsetid, int gen,
    struct inode **ipp)
{
 int error;
 struct path path;
 char *mnt;
 struct dentry *dentry;

 mnt = kmem_alloc(MAXPATHLEN, KM_SLEEP);

 error = zfsctl_snapshot_path_objset(sb->s_fs_info, objsetid,
     MAXPATHLEN, mnt);
 if (error)
  goto out;


 error = -kern_path(mnt, LOOKUP_FOLLOW|LOOKUP_DIRECTORY, &path);
 if (error)
  goto out;

 path_put(&path);





 *ipp = ilookup(sb, ZFSCTL_INO_SNAPDIRS - objsetid);
 if (*ipp == ((void*)0)) {
  error = SET_ERROR(ENOENT);
  goto out;
 }


 dentry = d_obtain_alias(igrab(*ipp));
 if (gen != (!IS_ERR(dentry) && d_mountpoint(dentry))) {
  iput(*ipp);
  *ipp = ((void*)0);
  error = SET_ERROR(ENOENT);
 }
 if (!IS_ERR(dentry))
  dput(dentry);
out:
 kmem_free(mnt, MAXPATHLEN);
 return (error);
}
