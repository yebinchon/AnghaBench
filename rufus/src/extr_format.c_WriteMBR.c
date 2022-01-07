
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int SectorSize; } ;
struct TYPE_9__ {int uses_minint; scalar_t__ has_grub4dos; scalar_t__ has_grub2; } ;
struct TYPE_8__ {char* _handle; int member_0; } ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef TYPE_1__ FAKE_FD ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 char* APPLICATION_NAME ;
 scalar_t__ BT_GRUB2 ;
 scalar_t__ BT_GRUB4DOS ;
 scalar_t__ BT_IMAGE ;
 scalar_t__ BT_NON_BOOTABLE ;
 scalar_t__ BT_REACTOS ;
 scalar_t__ BT_SYSLINUX_V4 ;
 scalar_t__ BT_SYSLINUX_V6 ;
 int ComboBox_GetCurSel (int ) ;
 int ComboBox_GetItemData (int ,int ) ;
 int DeviceIoControl (scalar_t__,int ,int *,int ,int *,int ,int *,int *) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_READ_FAULT ;
 int ERROR_SEVERITY_ERROR ;
 int ERROR_WRITE_FAULT ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;


 int FormatStatus ;
 scalar_t__ HAS_KOLIBRIOS (TYPE_2__) ;
 scalar_t__ HAS_SYSLINUX (TYPE_2__) ;
 scalar_t__ HAS_WINDOWS (TYPE_2__) ;
 scalar_t__ HAS_WINPE (TYPE_2__) ;
 int IDC_RUFUS_MBR ;
 int IOCTL_DISK_UPDATE_PROPERTIES ;
 scalar_t__ IS_FAT (int ) ;
 scalar_t__ IsChecked (int ) ;
 scalar_t__ PARTITION_STYLE_GPT ;
 TYPE_3__ SelectedDrive ;
 scalar_t__ TT_BIOS ;
 scalar_t__ TT_UEFI ;
 char* WindowsErrorString () ;
 scalar_t__ _mm_malloc (int,int) ;
 scalar_t__ allow_dual_uefi_bios ;
 scalar_t__ boot_type ;
 int fs_type ;
 int hDiskID ;
 int hFileSystem ;
 TYPE_2__ img_report ;
 scalar_t__ partition_type ;
 int read_sectors (scalar_t__,int,int ,int,unsigned char*) ;
 int safe_mm_free (unsigned char*) ;
 int set_bytes_per_sector (int) ;
 scalar_t__ target_type ;
 int uprintf (char const*,...) ;
 int write_grub2_mbr (int *) ;
 int write_grub4dos_mbr (int *) ;
 int write_kolibrios_mbr (int *) ;
 int write_reactos_mbr (int *) ;
 int write_rufus_gpt_mbr (int *) ;
 int write_rufus_mbr (int *) ;
 int write_sectors (scalar_t__,int,int ,int,unsigned char*) ;
 int write_syslinux_mbr (int *) ;
 int write_win7_mbr (int *) ;
 int write_zero_mbr (int *) ;

__attribute__((used)) static BOOL WriteMBR(HANDLE hPhysicalDrive)
{
 BOOL r = FALSE;
 DWORD size;
 unsigned char* buffer = ((void*)0);
 FAKE_FD fake_fd = { 0 };
 FILE* fp = (FILE*)&fake_fd;
 const char* using_msg = "Using %s MBR";



 if (SelectedDrive.SectorSize < 512)
  goto out;

 if (partition_type == PARTITION_STYLE_GPT) {

  fake_fd._handle = (char*)hPhysicalDrive;
  set_bytes_per_sector(SelectedDrive.SectorSize);
  uprintf(using_msg, "Rufus protective");
  r = write_rufus_gpt_mbr(fp);
  goto notify;
 }



 buffer = (unsigned char*)_mm_malloc(SelectedDrive.SectorSize, 16);
 if (buffer == ((void*)0)) {
  uprintf("Could not allocate memory for MBR");
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_NOT_ENOUGH_MEMORY;
  goto out;
 }

 if (!read_sectors(hPhysicalDrive, SelectedDrive.SectorSize, 0, 1, buffer)) {
  uprintf("Could not read MBR\n");
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_READ_FAULT;
  goto out;
 }

 switch (ComboBox_GetItemData(hFileSystem, ComboBox_GetCurSel(hFileSystem))) {
 case 129:
  if (buffer[0x1c2] == 0x0e) {
   uprintf("Partition is already FAT16 LBA...\n");
  } else if ((buffer[0x1c2] != 0x04) && (buffer[0x1c2] != 0x06)) {
   uprintf("Warning: converting a non FAT16 partition to FAT16 LBA: FS type=0x%02x\n", buffer[0x1c2]);
  }
  buffer[0x1c2] = 0x0e;
  break;
 case 128:
  if (buffer[0x1c2] == 0x0c) {
   uprintf("Partition is already FAT32 LBA...\n");
  } else if (buffer[0x1c2] != 0x0b) {
   uprintf("Warning: converting a non FAT32 partition to FAT32 LBA: FS type=0x%02x\n", buffer[0x1c2]);
  }
  buffer[0x1c2] = 0x0c;
  break;
 }
 if ((boot_type != BT_NON_BOOTABLE) && (target_type == TT_BIOS)) {

  buffer[0x1be] = IsChecked(IDC_RUFUS_MBR) ?
   (BYTE)ComboBox_GetItemData(hDiskID, ComboBox_GetCurSel(hDiskID)):0x80;
  uprintf("Set bootable USB partition as 0x%02X\n", buffer[0x1be]);
 }

 if (!write_sectors(hPhysicalDrive, SelectedDrive.SectorSize, 0, 1, buffer)) {
  uprintf("Could not write MBR\n");
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_WRITE_FAULT;
  goto out;
 }

 fake_fd._handle = (char*)hPhysicalDrive;
 set_bytes_per_sector(SelectedDrive.SectorSize);



 if ((boot_type == BT_IMAGE) && HAS_WINDOWS(img_report) && (allow_dual_uefi_bios) && (target_type == TT_BIOS))
  goto windows_mbr;


 if ((boot_type == BT_NON_BOOTABLE) || (target_type == TT_UEFI)) {
  uprintf(using_msg, "Zeroed");
  r = write_zero_mbr(fp);
  goto notify;
 }


 if ( (boot_type == BT_SYSLINUX_V4) || (boot_type == BT_SYSLINUX_V6) ||
   ((boot_type == BT_IMAGE) && HAS_SYSLINUX(img_report)) ) {
  uprintf(using_msg, "Syslinux");
  r = write_syslinux_mbr(fp);
  goto notify;
 }


 if ( ((boot_type == BT_IMAGE) && (img_report.has_grub2)) || (boot_type == BT_GRUB2) ) {
  uprintf(using_msg, "Grub 2.0");
  r = write_grub2_mbr(fp);
  goto notify;
 }


 if ( ((boot_type == BT_IMAGE) && (img_report.has_grub4dos)) || (boot_type == BT_GRUB4DOS) ) {
  uprintf(using_msg, "Grub4DOS");
  r = write_grub4dos_mbr(fp);
  goto notify;
 }


 if (boot_type == BT_REACTOS) {
  uprintf(using_msg, "ReactOS");
  r = write_reactos_mbr(fp);
  goto notify;
 }


 if ( (boot_type == BT_IMAGE) && HAS_KOLIBRIOS(img_report) && (IS_FAT(fs_type))) {
  uprintf(using_msg, "KolibriOS");
  r = write_kolibrios_mbr(fp);
  goto notify;
 }


windows_mbr:
 if ((HAS_WINPE(img_report) && !img_report.uses_minint) || (IsChecked(IDC_RUFUS_MBR))) {
  uprintf(using_msg, APPLICATION_NAME);
  r = write_rufus_mbr(fp);
 } else {
  uprintf(using_msg, "Windows 7");
  r = write_win7_mbr(fp);
 }

notify:

 if (!DeviceIoControl(hPhysicalDrive, IOCTL_DISK_UPDATE_PROPERTIES, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0)))
  uprintf("Failed to notify system about disk properties update: %s\n", WindowsErrorString());

out:
 safe_mm_free(buffer);
 return r;
}
