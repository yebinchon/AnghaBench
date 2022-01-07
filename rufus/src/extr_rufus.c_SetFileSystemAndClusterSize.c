
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int DiskSize; scalar_t__ MediaType; int SectorSize; int FSType; TYPE_1__* ClusterSize; } ;
struct TYPE_3__ {int Allowed; int Default; } ;
typedef int LONGLONG ;
typedef int LONG ;
typedef int BOOL ;


 int ComboBox_AddStringU (int ,char*) ;
 int ComboBox_GetCount (int ) ;
 int ComboBox_GetCurSel (int ) ;
 size_t ComboBox_GetItemData (int ,int) ;
 int ComboBox_ResetContent (int ) ;
 int ComboBox_SetCurSel (int ,int) ;
 int ComboBox_SetItemData (int ,int ,int) ;
 int FAT32_CLUSTER_THRESHOLD ;
 size_t FS_EXFAT ;
 size_t FS_EXT2 ;
 size_t FS_EXT3 ;
 size_t FS_FAT16 ;
 size_t FS_FAT32 ;
 int FS_MAX ;
 size_t FS_NTFS ;
 size_t FS_REFS ;
 size_t FS_UDF ;
 int FS_UNKNOWN ;
 char** FileSystemLabel ;
 scalar_t__ FixedMedia ;
 int GB ;
 int IGNORE_RETVAL (int ) ;
 int KB ;
 int LARGE_FAT32_SIZE ;
 float MAX_FAT32_SIZE ;
 int MB ;
 int MSG_030 ;
 void* SINGLE_CLUSTERSIZE_DEFAULT ;
 TYPE_2__ SelectedDrive ;
 int SetAllowedFileSystems () ;
 int SetClusterSizeLabels () ;
 int SetClusterSizes (int) ;
 int SetComboEntry (int ,int) ;
 float TB ;
 scalar_t__ WINDOWS_8_1 ;
 scalar_t__ advanced_mode_format ;
 scalar_t__* allowed_filesystem ;
 int default_fs ;
 scalar_t__ force_large_fat32 ;
 int hClusterSize ;
 int hFileSystem ;
 char* lmprintf (int ,char*) ;
 int memset (TYPE_1__**,int ,int) ;
 scalar_t__ nWindowsVersion ;
 scalar_t__ safe_strcmp (char*,char*) ;
 scalar_t__ safe_strlen (char*) ;
 size_t selected_fs ;
 int static_strcat (char*,char*) ;

__attribute__((used)) static BOOL SetFileSystemAndClusterSize(char* fs_name)
{
 int fs_index;
 LONGLONG i;
 char tmp[128] = "", *entry;

 IGNORE_RETVAL(ComboBox_ResetContent(hFileSystem));
 IGNORE_RETVAL(ComboBox_ResetContent(hClusterSize));
 default_fs = FS_UNKNOWN;
 memset(&SelectedDrive.ClusterSize, 0, sizeof(SelectedDrive.ClusterSize));
 if (SelectedDrive.DiskSize < 4*GB) {
  SelectedDrive.ClusterSize[FS_FAT16].Allowed = 0x00001E00;
  for (i=32; i<=4096; i<<=1) {
   if (SelectedDrive.DiskSize < i*MB) {
    SelectedDrive.ClusterSize[FS_FAT16].Default = 16*(ULONG)i;
    break;
   }
   SelectedDrive.ClusterSize[FS_FAT16].Allowed <<= 1;
  }
  SelectedDrive.ClusterSize[FS_FAT16].Allowed &= 0x0001FE00;
 }





 if ((SelectedDrive.DiskSize >= 32*MB) && (1.0f*SelectedDrive.DiskSize < 1.0f*MAX_FAT32_SIZE*TB)) {
  SelectedDrive.ClusterSize[FS_FAT32].Allowed = 0x000001F8;
  for (i=32; i<=(32*1024); i<<=1) {
   if (SelectedDrive.DiskSize*1.0f < i*MB*FAT32_CLUSTER_THRESHOLD) {
    SelectedDrive.ClusterSize[FS_FAT32].Default = 8*(ULONG)i;
    break;
   }
   SelectedDrive.ClusterSize[FS_FAT32].Allowed <<= 1;
  }
  SelectedDrive.ClusterSize[FS_FAT32].Allowed &= 0x0001FE00;


  if ((SelectedDrive.DiskSize >= 256*MB) && (SelectedDrive.DiskSize < 32*GB)) {
   for (i=8; i<=32; i<<=1) {
    if (SelectedDrive.DiskSize*1.0f < i*GB*FAT32_CLUSTER_THRESHOLD) {
     SelectedDrive.ClusterSize[FS_FAT32].Default = ((ULONG)i/2)*KB;
     break;
    }
   }
  }

  if (SelectedDrive.DiskSize >= 32*GB) {
   SelectedDrive.ClusterSize[FS_FAT32].Allowed &= 0x0001C000;
   SelectedDrive.ClusterSize[FS_FAT32].Default = 0x00008000;
  }
 }

 if (SelectedDrive.DiskSize < 256*TB) {

  SelectedDrive.ClusterSize[FS_NTFS].Allowed = 0x0001FE00;
  for (i=16; i<=256; i<<=1) {
   if (SelectedDrive.DiskSize < i*TB) {
    SelectedDrive.ClusterSize[FS_NTFS].Default = ((ULONG)i/4)*KB;
    break;
   }
  }


  SelectedDrive.ClusterSize[FS_EXFAT].Allowed = 0x03FFFE00;
  if (SelectedDrive.DiskSize < 256*MB)
   SelectedDrive.ClusterSize[FS_EXFAT].Default = 4*KB;
  else if (SelectedDrive.DiskSize < 32*GB)
   SelectedDrive.ClusterSize[FS_EXFAT].Default = 32*KB;
  else
   SelectedDrive.ClusterSize[FS_EXFAT].Default = 128*KB;


  SelectedDrive.ClusterSize[FS_UDF].Allowed = SINGLE_CLUSTERSIZE_DEFAULT;
  SelectedDrive.ClusterSize[FS_UDF].Default = 1;


  if (advanced_mode_format) {
   SelectedDrive.ClusterSize[FS_EXT2].Allowed = SINGLE_CLUSTERSIZE_DEFAULT;
   SelectedDrive.ClusterSize[FS_EXT2].Default = 1;
   SelectedDrive.ClusterSize[FS_EXT3].Allowed = SINGLE_CLUSTERSIZE_DEFAULT;
   SelectedDrive.ClusterSize[FS_EXT3].Default = 1;
  }



  if (SelectedDrive.DiskSize >= 512*MB) {
   if ((nWindowsVersion >= WINDOWS_8_1) && (SelectedDrive.MediaType == FixedMedia)) {
    SelectedDrive.ClusterSize[FS_REFS].Allowed = SINGLE_CLUSTERSIZE_DEFAULT;
    SelectedDrive.ClusterSize[FS_REFS].Default = 1;
   }
  }
 }


 SetAllowedFileSystems();
 SetClusterSizeLabels();

 for (fs_index = 0; fs_index < FS_MAX; fs_index++) {

  if (SelectedDrive.ClusterSize[fs_index].Allowed != SINGLE_CLUSTERSIZE_DEFAULT) {
   SelectedDrive.ClusterSize[fs_index].Allowed &= ~(SelectedDrive.SectorSize - 1);
   if ((SelectedDrive.ClusterSize[fs_index].Default & SelectedDrive.ClusterSize[fs_index].Allowed) == 0)

    SelectedDrive.ClusterSize[fs_index].Default =
    SelectedDrive.ClusterSize[fs_index].Allowed & (-(LONG)SelectedDrive.ClusterSize[fs_index].Allowed);
  }

  if (SelectedDrive.ClusterSize[fs_index].Allowed != 0) {
   tmp[0] = 0;

   if ((fs_index == FS_FAT32) && ((SelectedDrive.DiskSize > LARGE_FAT32_SIZE) || (force_large_fat32)))
    static_strcat(tmp, "Large ");
   static_strcat(tmp, FileSystemLabel[fs_index]);
   if (default_fs == FS_UNKNOWN) {
    entry = lmprintf(MSG_030, tmp);
    default_fs = fs_index;
   } else {
    entry = tmp;
   }
   if (allowed_filesystem[fs_index]) {
    IGNORE_RETVAL(ComboBox_SetItemData(hFileSystem,
     ComboBox_AddStringU(hFileSystem, entry), fs_index));
   }
  }
 }


 SelectedDrive.FSType = FS_UNKNOWN;
 if (safe_strlen(fs_name) != 0) {
  for (SelectedDrive.FSType = FS_MAX - 1; SelectedDrive.FSType >= 0; SelectedDrive.FSType--) {
   if (safe_strcmp(fs_name, FileSystemLabel[SelectedDrive.FSType]) == 0) {
    break;
   }
  }
 } else {

  SelectedDrive.FSType = selected_fs;
 }

 for (i = 0; i<ComboBox_GetCount(hFileSystem); i++) {
  if (ComboBox_GetItemData(hFileSystem, i) == SelectedDrive.FSType) {
   IGNORE_RETVAL(ComboBox_SetCurSel(hFileSystem, i));
   break;
  }
 }

 if (i == ComboBox_GetCount(hFileSystem)) {

  SetComboEntry(hFileSystem, default_fs);
 }

 return SetClusterSizes((int)ComboBox_GetItemData(hFileSystem, ComboBox_GetCurSel(hFileSystem)));
}
