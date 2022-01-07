
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vfs_mntpoint; void* vfs_do_nbmand; void* vfs_nbmand; void* vfs_do_relatime; void* vfs_relatime; void* vfs_do_atime; void* vfs_atime; void* vfs_do_xattr; void* vfs_xattr; void* vfs_do_devices; void* vfs_devices; void* vfs_do_exec; void* vfs_exec; void* vfs_do_setuid; void* vfs_setuid; void* vfs_do_readonly; void* vfs_readonly; } ;
typedef TYPE_1__ vfs_t ;
typedef int substring_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int ENOMEM ;
 int SET_ERROR (int ) ;
 void* ZFS_XATTR_DIR ;
 void* ZFS_XATTR_OFF ;
 void* ZFS_XATTR_SA ;
 int * match_strdup (int *) ;

__attribute__((used)) static int
zfsvfs_parse_option(char *option, int token, substring_t *args, vfs_t *vfsp)
{
 switch (token) {
 case 132:
  vfsp->vfs_readonly = B_TRUE;
  vfsp->vfs_do_readonly = B_TRUE;
  break;
 case 131:
  vfsp->vfs_readonly = B_FALSE;
  vfsp->vfs_do_readonly = B_TRUE;
  break;
 case 129:
  vfsp->vfs_setuid = B_TRUE;
  vfsp->vfs_do_setuid = B_TRUE;
  break;
 case 135:
  vfsp->vfs_setuid = B_FALSE;
  vfsp->vfs_do_setuid = B_TRUE;
  break;
 case 143:
  vfsp->vfs_exec = B_TRUE;
  vfsp->vfs_do_exec = B_TRUE;
  break;
 case 138:
  vfsp->vfs_exec = B_FALSE;
  vfsp->vfs_do_exec = B_TRUE;
  break;
 case 145:
  vfsp->vfs_devices = B_TRUE;
  vfsp->vfs_do_devices = B_TRUE;
  break;
 case 139:
  vfsp->vfs_devices = B_FALSE;
  vfsp->vfs_do_devices = B_TRUE;
  break;
 case 144:
  vfsp->vfs_xattr = ZFS_XATTR_DIR;
  vfsp->vfs_do_xattr = B_TRUE;
  break;
 case 130:
  vfsp->vfs_xattr = ZFS_XATTR_SA;
  vfsp->vfs_do_xattr = B_TRUE;
  break;
 case 128:
  vfsp->vfs_xattr = ZFS_XATTR_DIR;
  vfsp->vfs_do_xattr = B_TRUE;
  break;
 case 134:
  vfsp->vfs_xattr = ZFS_XATTR_OFF;
  vfsp->vfs_do_xattr = B_TRUE;
  break;
 case 146:
  vfsp->vfs_atime = B_TRUE;
  vfsp->vfs_do_atime = B_TRUE;
  break;
 case 140:
  vfsp->vfs_atime = B_FALSE;
  vfsp->vfs_do_atime = B_TRUE;
  break;
 case 133:
  vfsp->vfs_relatime = B_TRUE;
  vfsp->vfs_do_relatime = B_TRUE;
  break;
 case 136:
  vfsp->vfs_relatime = B_FALSE;
  vfsp->vfs_do_relatime = B_TRUE;
  break;
 case 141:
  vfsp->vfs_nbmand = B_TRUE;
  vfsp->vfs_do_nbmand = B_TRUE;
  break;
 case 137:
  vfsp->vfs_nbmand = B_FALSE;
  vfsp->vfs_do_nbmand = B_TRUE;
  break;
 case 142:
  vfsp->vfs_mntpoint = match_strdup(&args[0]);
  if (vfsp->vfs_mntpoint == ((void*)0))
   return (SET_ERROR(ENOMEM));

  break;
 default:
  break;
 }

 return (0);
}
