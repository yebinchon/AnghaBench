
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_t ;
typedef int zilog_t ;
struct TYPE_7__ {TYPE_1__* z_os; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vsecattr_t ;
struct inode {int dummy; } ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ os_sync; } ;


 int ATTR_NOACLCHECK ;
 int B_FALSE ;
 int B_TRUE ;
 int * ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (int *) ;
 int zfs_setacl (int *,int *,int ,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_setsecattr(struct inode *ip, vsecattr_t *vsecp, int flag, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int error;
 boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;
 zilog_t *zilog = zfsvfs->z_log;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 error = zfs_setacl(zp, vsecp, skipaclchk, cr);

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}
