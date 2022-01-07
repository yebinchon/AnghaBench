
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errcode_t ;
typedef scalar_t__ blk64_t ;
typedef long long __u64 ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int TRUE ;
 int _CloseDisk (int ) ;
 int _Ext2OpenDevice (char const*,int ,int *,long long*,long long*,int *,int *) ;
 int _GetDeviceSize (int ,long long*) ;

errcode_t ext2fs_get_device_size2(const char *file, int blocksize, blk64_t *retblocks)
{
 errcode_t errcode = 0;
 __u64 Offset, Size = 0;
 HANDLE h;
 BOOLEAN Readonly;

 if (!_Ext2OpenDevice(file, TRUE, &h, &Offset, &Size, &Readonly, &errcode))
  return errcode;

 if (Size == 0LL)
  _GetDeviceSize(h, &Size);
 _CloseDisk(h);

 *retblocks = (blk64_t)(Size / blocksize);
 return 0;
}
