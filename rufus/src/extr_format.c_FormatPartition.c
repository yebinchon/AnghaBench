
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t USHORT ;
struct TYPE_2__ {scalar_t__ DiskSize; } ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_SEVERITY_ERROR ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;
 int FP_LARGE_FAT32 ;
 size_t FS_EXT2 ;
 size_t FS_FAT32 ;
 size_t FS_MAX ;
 int * FileSystemLabel ;
 int FormatExtFs (int,int ,int,int ,int ,int) ;
 int FormatLargeFAT32 (int,int ,int,int ,int ,int) ;
 int FormatNative (int,int ,int,int ,int ,int) ;
 int FormatNativeVds (int,int ,int,int ,int ,int) ;
 scalar_t__ LARGE_FAT32_SIZE ;
 TYPE_1__ SelectedDrive ;
 size_t actual_fs_type ;
 scalar_t__ force_large_fat32 ;
 scalar_t__ use_vds ;

__attribute__((used)) static BOOL FormatPartition(DWORD DriveIndex, uint64_t PartitionOffset, DWORD UnitAllocationSize, USHORT FSType, LPCSTR Label, DWORD Flags)
{
 if ((DriveIndex < 0x80) || (DriveIndex > 0x100) || (FSType >= FS_MAX) ||

  ((UnitAllocationSize != 0) && (UnitAllocationSize & (UnitAllocationSize - 1)))) {
  ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_INVALID_PARAMETER;
  return FALSE;
 }
 actual_fs_type = FSType;
 if ((FSType == FS_FAT32) && ((SelectedDrive.DiskSize > LARGE_FAT32_SIZE) || (force_large_fat32) || (Flags & FP_LARGE_FAT32)))
  return FormatLargeFAT32(DriveIndex, PartitionOffset, UnitAllocationSize, FileSystemLabel[FSType], Label, Flags);
 else if (FSType >= FS_EXT2)
  return FormatExtFs(DriveIndex, PartitionOffset, UnitAllocationSize, FileSystemLabel[FSType], Label, Flags);
 else if (use_vds)
  return FormatNativeVds(DriveIndex, PartitionOffset, UnitAllocationSize, FileSystemLabel[FSType], Label, Flags);
 else
  return FormatNative(DriveIndex, PartitionOffset, UnitAllocationSize, FileSystemLabel[FSType], Label, Flags);
}
