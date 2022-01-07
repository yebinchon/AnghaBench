
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xvattr_t ;
struct TYPE_4__ {void* xoa_projinherit; void* xoa_nodump; void* xoa_appendonly; void* xoa_immutable; } ;
typedef TYPE_1__ xoptattr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct inode {int dummy; } ;
struct TYPE_5__ {int z_pflags; } ;


 void* B_TRUE ;
 int CAP_LINUX_IMMUTABLE ;
 int EACCES ;
 int EOPNOTSUPP ;
 int FS_APPEND_FL ;
 int FS_IMMUTABLE_FL ;
 int FS_NODUMP_FL ;
 TYPE_3__* ITOZ (struct inode*) ;
 int XAT_APPENDONLY ;
 int XAT_IMMUTABLE ;
 int XAT_NODUMP ;
 int XAT_PROJINHERIT ;
 int XVA_SET_REQ (int *,int ) ;
 int ZFS_APPENDONLY ;
 int ZFS_FL_USER_MODIFIABLE ;
 int ZFS_IMMUTABLE ;
 int ZFS_PROJINHERIT_FL ;
 int capable (int ) ;
 scalar_t__ fchange (int,int ,int,int ) ;
 int inode_owner_or_capable (struct inode*) ;
 TYPE_1__* xva_getxoptattr (int *) ;
 int xva_init (int *) ;

__attribute__((used)) static int
__zpl_ioctl_setflags(struct inode *ip, uint32_t ioctl_flags, xvattr_t *xva)
{
 uint64_t zfs_flags = ITOZ(ip)->z_pflags;
 xoptattr_t *xoap;

 if (ioctl_flags & ~(FS_IMMUTABLE_FL | FS_APPEND_FL | FS_NODUMP_FL |
     ZFS_PROJINHERIT_FL))
  return (-EOPNOTSUPP);

 if (ioctl_flags & ~ZFS_FL_USER_MODIFIABLE)
  return (-EACCES);

 if ((fchange(ioctl_flags, zfs_flags, FS_IMMUTABLE_FL, ZFS_IMMUTABLE) ||
     fchange(ioctl_flags, zfs_flags, FS_APPEND_FL, ZFS_APPENDONLY)) &&
     !capable(CAP_LINUX_IMMUTABLE))
  return (-EACCES);

 if (!inode_owner_or_capable(ip))
  return (-EACCES);

 xva_init(xva);
 xoap = xva_getxoptattr(xva);

 XVA_SET_REQ(xva, XAT_IMMUTABLE);
 if (ioctl_flags & FS_IMMUTABLE_FL)
  xoap->xoa_immutable = B_TRUE;

 XVA_SET_REQ(xva, XAT_APPENDONLY);
 if (ioctl_flags & FS_APPEND_FL)
  xoap->xoa_appendonly = B_TRUE;

 XVA_SET_REQ(xva, XAT_NODUMP);
 if (ioctl_flags & FS_NODUMP_FL)
  xoap->xoa_nodump = B_TRUE;

 XVA_SET_REQ(xva, XAT_PROJINHERIT);
 if (ioctl_flags & ZFS_PROJINHERIT_FL)
  xoap->xoa_projinherit = B_TRUE;

 return (0);
}
