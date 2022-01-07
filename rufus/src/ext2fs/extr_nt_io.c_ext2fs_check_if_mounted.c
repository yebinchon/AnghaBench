
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errcode_t ;
typedef int __u64 ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int EXT2_MF_MOUNTED ;
 int TRUE ;
 int _CloseDisk (int ) ;
 int _Ext2OpenDevice (char const*,int ,int *,int *,int *,int *,int *) ;
 scalar_t__ _IsMounted (int ) ;

errcode_t ext2fs_check_if_mounted(const char *file, int *mount_flags)
{
 errcode_t errcode = 0;
 __u64 Offset, Size;
 HANDLE h;
 BOOLEAN Readonly;

 *mount_flags = 0;

 if (!_Ext2OpenDevice(file, TRUE, &h, &Offset, &Size, &Readonly, &errcode))
  return errcode;

 *mount_flags &= _IsMounted(h) ? EXT2_MF_MOUNTED : 0;
 _CloseDisk(h);

 return 0;
}
