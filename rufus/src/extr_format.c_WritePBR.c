
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int SectorSize; } ;
struct TYPE_3__ {char* _handle; int _offset; int member_0; } ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef TYPE_1__ FAKE_FD ;
typedef int BOOL ;


 int BT_FREEDOS ;
 int BT_IMAGE ;
 int BT_REACTOS ;
 int ERROR_SEVERITY_ERROR ;
 int ERROR_WRITE_FAULT ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;



 int FormatStatus ;
 int HAS_BOOTMGR (int ) ;
 int HAS_KOLIBRIOS (int ) ;
 int HAS_WINPE (int ) ;
 TYPE_2__ SelectedDrive ;
 int TRUE ;
 int actual_fs_type ;
 int boot_type ;
 int bt_to_name () ;
 int img_report ;
 int is_fat_16_fs (int *) ;
 int is_fat_32_fs (int *) ;
 int is_ntfs_fs (int *) ;
 int set_bytes_per_sector (int) ;
 int uprintf (char const*,...) ;
 int write_fat_16_br (int *,int ) ;
 int write_fat_16_fd_br (int *,int ) ;
 int write_fat_16_ros_br (int *,int ) ;
 int write_fat_32_br (int *,int ) ;
 int write_fat_32_fd_br (int *,int ) ;
 int write_fat_32_kos_br (int *,int ) ;
 int write_fat_32_nt_br (int *,int ) ;
 int write_fat_32_pe_br (int *,int ) ;
 int write_fat_32_ros_br (int *,int ) ;
 int write_ntfs_br (int *) ;
 int write_partition_physical_disk_drive_id_fat16 (int *) ;
 int write_partition_physical_disk_drive_id_fat32 (int *) ;

__attribute__((used)) static BOOL WritePBR(HANDLE hLogicalVolume)
{
 int i;
 FAKE_FD fake_fd = { 0 };
 FILE* fp = (FILE*)&fake_fd;
 const char* using_msg = "Using %s %s partition boot record";

 fake_fd._handle = (char*)hLogicalVolume;
 set_bytes_per_sector(SelectedDrive.SectorSize);

 switch (actual_fs_type) {
 case 130:
  uprintf(using_msg, bt_to_name(), "FAT16");
  if (!is_fat_16_fs(fp)) {
   uprintf("New volume does not have a FAT16 boot sector - aborting");
   break;
  }
  uprintf("Confirmed new volume has a FAT16 boot sector");
  if (boot_type == BT_FREEDOS) {
   if (!write_fat_16_fd_br(fp, 0)) break;
  } else if (boot_type == BT_REACTOS) {
   if (!write_fat_16_ros_br(fp, 0)) break;
  } else if ((boot_type == BT_IMAGE) && HAS_KOLIBRIOS(img_report)) {
   uprintf("FAT16 is not supported for KolibriOS\n"); break;
  } else {
   if (!write_fat_16_br(fp, 0)) break;
  }

  if (!write_partition_physical_disk_drive_id_fat16(fp))
   break;
  return TRUE;
 case 129:
  uprintf(using_msg, bt_to_name(), "FAT32");
  for (i=0; i<2; i++) {
   if (!is_fat_32_fs(fp)) {
    uprintf("New volume does not have a %s FAT32 boot sector - aborting\n", i?"secondary":"primary");
    break;
   }
   uprintf("Confirmed new volume has a %s FAT32 boot sector\n", i?"secondary":"primary");
   uprintf("Setting %s FAT32 boot sector for boot...\n", i?"secondary":"primary");
   if (boot_type == BT_FREEDOS) {
    if (!write_fat_32_fd_br(fp, 0)) break;
   } else if (boot_type == BT_REACTOS) {
    if (!write_fat_32_ros_br(fp, 0)) break;
   } else if ((boot_type == BT_IMAGE) && HAS_KOLIBRIOS(img_report)) {
    if (!write_fat_32_kos_br(fp, 0)) break;
   } else if ((boot_type == BT_IMAGE) && HAS_BOOTMGR(img_report)) {
    if (!write_fat_32_pe_br(fp, 0)) break;
   } else if ((boot_type == BT_IMAGE) && HAS_WINPE(img_report)) {
    if (!write_fat_32_nt_br(fp, 0)) break;
   } else {
    if (!write_fat_32_br(fp, 0)) break;
   }

   if (!write_partition_physical_disk_drive_id_fat32(fp))
    break;
   fake_fd._offset += 6 * SelectedDrive.SectorSize;
  }
  return TRUE;
 case 128:
  uprintf(using_msg, bt_to_name(), "NTFS");
  if (!is_ntfs_fs(fp)) {
   uprintf("New volume does not have an NTFS boot sector - aborting\n");
   break;
  }
  uprintf("Confirmed new volume has an NTFS boot sector\n");
  if (!write_ntfs_br(fp)) break;



  return TRUE;
 default:
  uprintf("Unsupported FS for FS BR processing - aborting\n");
  break;
 }
 FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_WRITE_FAULT;
 return FALSE;
}
