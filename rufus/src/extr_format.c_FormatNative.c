
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef char WCHAR ;
struct TYPE_2__ {int MediaType; } ;
typedef char* LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_CANCELLED ;
 int ERROR_GEN_FAILURE ;
 int ERROR_SEVERITY_ERROR ;
 int EnableVolumeCompression ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 int FALSE ;
 int FPF_COMPRESSED ;
 int FP_COMPRESSION ;
 int FP_QUICK ;
 size_t FS_EXFAT ;
 int * FileSystemLabel ;
 int FormatEx ;
 int FormatExCallback ;
 int FormatStatus ;
 int GetLastError () ;
 char* GetLogicalName (int,int ,int ,int ) ;
 scalar_t__ HRESULT_CODE (int) ;
 scalar_t__ IS_ERROR (int) ;
 int LC_ALL ;
 int MSG_220 ;
 int MSG_222 ;
 int PF_DECL (int ) ;
 int PF_INIT (int ,int ) ;
 int PF_INIT_OR_OUT (int ,int ) ;
 int PrintInfoDebug (int ,int ,char*,...) ;
 int SCODE_CODE (int ) ;
 TYPE_1__ SelectedDrive ;
 int Sleep (int ) ;
 int TRUE ;
 size_t WRITE_RETRIES ;
 int WRITE_TIMEOUT ;
 int WindowsErrorString () ;
 scalar_t__ dur_mins ;
 scalar_t__ dur_secs ;
 int fmifs ;
 float format_percent ;
 scalar_t__ pfEnableVolumeCompression (char*,int ) ;
 int pfFormatEx (char*,int ,char*,char*,int,int,int ) ;
 int safe_free (char*) ;
 char* setlocale (int ,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ task_number ;
 int uprintf (char*,...) ;
 char* utf8_to_wchar (char*) ;
 size_t wcslen (char*) ;

__attribute__((used)) static BOOL FormatNative(DWORD DriveIndex, uint64_t PartitionOffset, DWORD ClusterSize, LPCSTR FSName, LPCSTR Label, DWORD Flags)
{
 BOOL r = FALSE;
 PF_DECL(FormatEx);
 PF_DECL(EnableVolumeCompression);
 char *locale, *VolumeName = ((void*)0);
 WCHAR* wVolumeName = ((void*)0), *wLabel = utf8_to_wchar(Label), *wFSName = utf8_to_wchar(FSName);
 size_t i;

 if ((strcmp(FSName, FileSystemLabel[FS_EXFAT]) == 0) && !((dur_mins == 0) && (dur_secs == 0))) {
  PrintInfoDebug(0, MSG_220, FSName, dur_mins, dur_secs);
 } else {
  PrintInfoDebug(0, MSG_222, FSName);
 }
 VolumeName = GetLogicalName(DriveIndex, PartitionOffset, TRUE, TRUE);
 wVolumeName = utf8_to_wchar(VolumeName);
 if (wVolumeName == ((void*)0)) {
  uprintf("Could not read volume name");
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_GEN_FAILURE;
  goto out;
 }


 wVolumeName[wcslen(wVolumeName)-1] = 0;




 locale = setlocale(LC_ALL, ((void*)0));
 PF_INIT_OR_OUT(FormatEx, fmifs);
 PF_INIT(EnableVolumeCompression, fmifs);
 setlocale(LC_ALL, locale);

 if (ClusterSize < 0x200) {

  ClusterSize = 0;
  uprintf("Using default cluster size");
 } else {
  uprintf("Using cluster size: %d bytes", ClusterSize);
 }
 format_percent = 0.0f;
 task_number = 0;

 uprintf("%s format was selected", (Flags & FP_QUICK) ? "Quick" : "Slow");
 for (i = 0; i < WRITE_RETRIES; i++) {
  pfFormatEx(wVolumeName, SelectedDrive.MediaType, wFSName, wLabel,
   (Flags & FP_QUICK), ClusterSize, FormatExCallback);
  if (!IS_ERROR(FormatStatus) || (HRESULT_CODE(FormatStatus) == ERROR_CANCELLED))
   break;
  uprintf("%s - Retrying...", WindowsErrorString());
  Sleep(WRITE_TIMEOUT);
 }
 if (IS_ERROR(FormatStatus))
  goto out;

 if (Flags & FP_COMPRESSION) {
  wVolumeName[wcslen(wVolumeName)] = '\\';
  if (pfEnableVolumeCompression(wVolumeName, FPF_COMPRESSED)) {
   uprintf("Enabled NTFS compression");
  } else {
   uprintf("Could not enable NTFS compression: %s", WindowsErrorString());
  }
 }

 if (!IS_ERROR(FormatStatus)) {
  uprintf("Format completed.");
  r = TRUE;
 }

out:
 if (!r && !IS_ERROR(FormatStatus))
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|SCODE_CODE(GetLastError());
 safe_free(VolumeName);
 safe_free(wVolumeName);
 safe_free(wLabel);
 safe_free(wFSName);
 return r;
}
