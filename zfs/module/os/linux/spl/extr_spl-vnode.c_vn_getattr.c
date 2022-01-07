
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; } ;
struct file {int va_nblocks; int va_rdev; int va_ctime; int va_mtime; int va_atime; int va_blksize; int va_size; int va_nlink; int va_nodeid; scalar_t__ va_fsid; int va_gid; int va_uid; int va_mode; int va_type; int f_dentry; TYPE_1__ f_path; struct file* v_file; } ;
typedef struct file vnode_t ;
typedef struct file vattr_t ;
struct kstat {int blocks; int rdev; int ctime; int mtime; int atime; int blksize; int size; int nlink; int ino; int gid; int uid; int mode; } ;


 int ASSERT (struct file*) ;
 int AT_STATX_SYNC_AS_STAT ;
 int KGID_TO_SGID (int ) ;
 int KUID_TO_SUID (int ) ;
 int STATX_BASIC_STATS ;
 int vfs_getattr (TYPE_1__*,struct kstat*,...) ;
 int vn_mode_to_vtype (int ) ;

int
vn_getattr(vnode_t *vp, vattr_t *vap, int flags, void *x3, void *x4)
{
 struct file *fp;
 struct kstat stat;
 int rc;

 ASSERT(vp);
 ASSERT(vp->v_file);
 ASSERT(vap);

 fp = vp->v_file;







 rc = vfs_getattr(fp->f_path.mnt, fp->f_dentry, &stat);

 if (rc)
  return (-rc);

 vap->va_type = vn_mode_to_vtype(stat.mode);
 vap->va_mode = stat.mode;
 vap->va_uid = KUID_TO_SUID(stat.uid);
 vap->va_gid = KGID_TO_SGID(stat.gid);
 vap->va_fsid = 0;
 vap->va_nodeid = stat.ino;
 vap->va_nlink = stat.nlink;
 vap->va_size = stat.size;
 vap->va_blksize = stat.blksize;
 vap->va_atime = stat.atime;
 vap->va_mtime = stat.mtime;
 vap->va_ctime = stat.ctime;
 vap->va_rdev = stat.rdev;
 vap->va_nblocks = stat.blocks;

 return (0);
}
