
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int u32 ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int nlink; int size; int atime; int mtime; int ctime; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 TYPE_2__* ITOZSB (struct inode*) ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int current_time (struct inode*) ;
 int dmu_objset_snap_cmtime (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

__attribute__((used)) static int
zpl_snapdir_getattr_impl(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int query_flags)
{
 struct inode *ip = path->dentry->d_inode;
 zfsvfs_t *zfsvfs = ITOZSB(ip);

 ZFS_ENTER(zfsvfs);
 generic_fillattr(ip, stat);

 stat->nlink = stat->size = 2;
 stat->ctime = stat->mtime = dmu_objset_snap_cmtime(zfsvfs->z_os);
 stat->atime = current_time(ip);
 ZFS_EXIT(zfsvfs);

 return (0);
}
