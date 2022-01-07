
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {scalar_t__ MediaType; int SectorSize; } ;
struct TYPE_5__ {char** wininst_path; } ;
typedef int FILE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int APPERR (int ) ;
 char* AltMountVolume (scalar_t__,int ,scalar_t__) ;
 int AltUnmountVolume (char*,scalar_t__) ;
 int ERROR_CANT_ASSIGN_LETTER ;
 int ERROR_ISO_EXTRACT ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SEVERITY_ERROR ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 scalar_t__ FALSE ;
 int FP_FORCE ;
 int FP_LARGE_FAT32 ;
 int FP_NO_BOOT ;
 int FP_QUICK ;
 int FS_FAT32 ;
 scalar_t__ FixedMedia ;
 int FormatPartition (scalar_t__,int ,int,int ,char*,int) ;
 int FormatStatus ;
 unsigned char* GetResource (int ,int ,int ,char*,scalar_t__*,scalar_t__) ;
 scalar_t__ HAS_BOOTMGR_BIOS (TYPE_1__) ;
 scalar_t__ HAS_BOOTMGR_EFI (TYPE_1__) ;
 int IDR_TOGO_SAN_POLICY_XML ;
 int IDR_TOGO_UNATTEND_XML ;
 int IS_ERROR (int) ;
 int MAKEINTRESOURCEA (int ) ;
 int MAX_PATH ;
 int MSG_267 ;
 char* MountISO (int ) ;
 int OP_FILE_COPY ;
 size_t PI_ESP ;
 scalar_t__ RunCommand (char*,int *,scalar_t__) ;
 TYPE_2__ SelectedDrive ;
 int Sleep (int) ;
 scalar_t__ TRUE ;
 int UnMountISO () ;
 int UpdateProgressWithInfo (int ,int ,scalar_t__,scalar_t__) ;
 int WimApplyImage (char*,int ,char const*) ;
 int _RT_RCDATA ;
 int fclose (int *) ;
 int * fopenU (char*,char*) ;
 scalar_t__ fwrite (unsigned char*,int,scalar_t__,int *) ;
 int hMainInstance ;
 int image_path ;
 TYPE_1__ img_report ;
 int nWindowsBuildNumber ;
 int * partition_offset ;
 int static_sprintf (char*,char*,char const*,char const*,...) ;
 int * sysnative_dir ;
 int uprintf (char*,...) ;
 scalar_t__ usb_debug ;
 int wim_extra_files ;
 scalar_t__ wim_nb_files ;
 scalar_t__ wim_proc_files ;
 size_t wininst_index ;
 int wintogo_index ;

__attribute__((used)) static BOOL SetupWinToGo(DWORD DriveIndex, const char* drive_name, BOOL use_esp)
{



 static char unattend_path[] = "?:\\Windows\\System32\\sysprep\\unattend.xml";
 char *mounted_iso, *ms_efi = ((void*)0), image[128], cmd[MAX_PATH];
 unsigned char *buffer;
 DWORD bufsize;
 ULONG cluster_size;
 FILE* fd;

 uprintf("Windows To Go mode selected");

 if ((use_esp) && (SelectedDrive.MediaType != FixedMedia) && (nWindowsBuildNumber < 15000)) {
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_NOT_SUPPORTED;
  return FALSE;
 }


 mounted_iso = MountISO(image_path);
 if (mounted_iso == ((void*)0)) {
  uprintf("Could not mount ISO for Windows To Go installation");
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|APPERR(ERROR_ISO_EXTRACT);
  return FALSE;
 }
 static_sprintf(image, "%s%s", mounted_iso, &img_report.wininst_path[wininst_index][2]);
 uprintf("Mounted ISO as '%s'", mounted_iso);


 if (!WimApplyImage(image, wintogo_index, drive_name)) {
  uprintf("Failed to apply Windows To Go image");
  if (!IS_ERROR(FormatStatus))
   FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|APPERR(ERROR_ISO_EXTRACT);
  UnMountISO();
  return FALSE;
 }
 UnMountISO();

 if (use_esp) {
  uprintf("Setting up EFI System Partition");



  if (SelectedDrive.SectorSize <= 1024)
   cluster_size = 1024;
  else if (SelectedDrive.SectorSize <= 4096)
   cluster_size = 4096;
  else
   cluster_size = (ULONG)SelectedDrive.SectorSize;





  if (!FormatPartition(DriveIndex, partition_offset[PI_ESP], cluster_size, FS_FAT32, "",
   FP_QUICK | FP_FORCE | FP_LARGE_FAT32 | FP_NO_BOOT)) {
   uprintf("Could not format EFI System Partition");
   return FALSE;
  }
  Sleep(200);
 }

 if (use_esp) {

  ms_efi = AltMountVolume(DriveIndex, partition_offset[PI_ESP], FALSE);
  if (ms_efi == ((void*)0)) {
   FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | APPERR(ERROR_CANT_ASSIGN_LETTER);
   return FALSE;
  }
 }





 static_sprintf(cmd, "%s\\bcdboot.exe %s\\Windows /v /f %s /s %s", sysnative_dir, drive_name,
  HAS_BOOTMGR_BIOS(img_report) ? (HAS_BOOTMGR_EFI(img_report) ? "ALL" : "BIOS") : "UEFI",
  (use_esp)?ms_efi:drive_name);
 uprintf("Enabling boot using command '%s'", cmd);
 if (RunCommand(cmd, sysnative_dir, usb_debug) != 0) {

  uprintf("Failed to enable boot");
  FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | APPERR(ERROR_ISO_EXTRACT);
 }

 if (use_esp) {
  Sleep(200);
  AltUnmountVolume(ms_efi, FALSE);
 }
 UpdateProgressWithInfo(OP_FILE_COPY, MSG_267, wim_proc_files + 2 * wim_extra_files, wim_nb_files);
 uprintf("Copying 'unattend.xml', to disable the use of the Windows Recovery Environment...");
 buffer = GetResource(hMainInstance, MAKEINTRESOURCEA(IDR_TOGO_UNATTEND_XML),
  _RT_RCDATA, "unattend.xml", &bufsize, FALSE);
 unattend_path[0] = drive_name[0];
 fd = fopenU(unattend_path, "wb");
 if ((fd == ((void*)0)) || (fwrite(buffer, 1, bufsize, fd) != bufsize))
  uprintf("Could not write '%s'", unattend_path);
 if (fd != ((void*)0))
  fclose(fd);
 UpdateProgressWithInfo(OP_FILE_COPY, MSG_267, wim_nb_files, wim_nb_files);

 return TRUE;
}
