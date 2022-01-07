
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int FirstDataSector; } ;
typedef int LONGLONG ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CHECK_FOR_USER_CANCEL ;
 int CheckDriveAccess (int,scalar_t__) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SEVERITY_ERROR ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 scalar_t__ FALSE ;
 int FormatStatus ;
 int MAX_SECTORS_TO_CLEAR ;
 int MSG_224 ;
 int PrintInfoDebug (int ,int ) ;
 TYPE_1__ SelectedDrive ;
 int Sleep (int ) ;
 scalar_t__ TRUE ;
 int WRITE_RETRIES ;
 int WRITE_TIMEOUT ;
 scalar_t__ calloc (int,int) ;
 int min (int ,int) ;
 int safe_free (unsigned char*) ;
 int uprintf (char*,...) ;
 int write_sectors (int ,int,int,int,unsigned char*) ;

__attribute__((used)) static BOOL ClearMBRGPT(HANDLE hPhysicalDrive, LONGLONG DiskSize, DWORD SectorSize, BOOL add1MB)
{
 BOOL r = FALSE;
 uint64_t i, j, last_sector = DiskSize/SectorSize, num_sectors_to_clear;
 unsigned char* pBuf = (unsigned char*) calloc(SectorSize, 1);

 PrintInfoDebug(0, MSG_224);
 if (pBuf == ((void*)0)) {
  FormatStatus = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_NOT_ENOUGH_MEMORY;
  goto out;
 }
 num_sectors_to_clear = min(SelectedDrive.FirstDataSector, (DWORD)((add1MB ? 2048 : 0) + MAX_SECTORS_TO_CLEAR));

 if (num_sectors_to_clear < 4)
  num_sectors_to_clear = (DWORD)((add1MB ? 2048 : 0) + MAX_SECTORS_TO_CLEAR);

 uprintf("Erasing %d sectors", num_sectors_to_clear);
 for (i=0; i<num_sectors_to_clear; i++) {
  for (j = 1; j <= WRITE_RETRIES; j++) {
   CHECK_FOR_USER_CANCEL;
   if (write_sectors(hPhysicalDrive, SectorSize, i, 1, pBuf) != SectorSize) {
    if (j >= WRITE_RETRIES)
     goto out;
    uprintf("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);

    Sleep(CheckDriveAccess(WRITE_TIMEOUT, FALSE));
   }
  }
 }
 for (i = last_sector - MAX_SECTORS_TO_CLEAR; i < last_sector; i++) {
  for (j = 1; j <= WRITE_RETRIES; j++) {
   CHECK_FOR_USER_CANCEL;
   if (write_sectors(hPhysicalDrive, SectorSize, i, 1, pBuf) != SectorSize) {
    if (j < WRITE_RETRIES) {
     uprintf("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);
     Sleep(CheckDriveAccess(WRITE_TIMEOUT, FALSE));
    } else {


     uprintf("Warning: Failed to clear backup GPT...");
     r = TRUE;
     goto out;
    }
   }
  }
 }
 r = TRUE;

out:
 safe_free(pBuf);
 return r;
}
