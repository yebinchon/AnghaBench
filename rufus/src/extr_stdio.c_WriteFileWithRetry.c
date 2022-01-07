
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef int* LPDWORD ;
typedef int LPCVOID ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CheckDriveAccess (int,scalar_t__) ;
 int ERROR_SEVERITY_ERROR ;
 scalar_t__ ERROR_SUCCESS ;
 int ERROR_WRITE_FAULT ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 scalar_t__ FALSE ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 int GetLastError () ;
 int LastWriteError ;
 scalar_t__ SCODE_CODE (int) ;
 scalar_t__ SetFilePointerEx (int ,TYPE_2__,TYPE_2__*,int ) ;
 int SetLastError (int) ;
 int Sleep (int ) ;
 scalar_t__ TRUE ;
 int WRITE_TIMEOUT ;
 int WindowsErrorString () ;
 scalar_t__ WriteFile (int ,int ,int,int*,int *) ;
 scalar_t__ large_drive ;
 int uprintf (char*,...) ;

BOOL WriteFileWithRetry(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,
 LPDWORD lpNumberOfBytesWritten, DWORD nNumRetries)
{
 DWORD nTry;
 BOOL readFilePointer;
 LARGE_INTEGER liFilePointer, liZero = { { 0,0 } };


 readFilePointer = SetFilePointerEx(hFile, liZero, &liFilePointer, FILE_CURRENT);
 if (!readFilePointer)
  uprintf("Warning: Could not read file pointer %s", WindowsErrorString());

 if (nNumRetries == 0)
  nNumRetries = 1;
 for (nTry = 1; nTry <= nNumRetries; nTry++) {

  if ((nTry > 1) && (!SetFilePointerEx(hFile, liFilePointer, ((void*)0), FILE_BEGIN))) {
   uprintf("Could not set file pointer - Aborting");
   break;
  }
  if (WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, ((void*)0))) {
   LastWriteError = 0;
   if (nNumberOfBytesToWrite == *lpNumberOfBytesWritten)
    return TRUE;

   if (large_drive && (*lpNumberOfBytesWritten == 0)) {
    uprintf("Warning: Possible short write");
    return TRUE;
   }
   uprintf("Wrote %d bytes but requested %d", *lpNumberOfBytesWritten, nNumberOfBytesToWrite);
  } else {
   uprintf("Write error %s", WindowsErrorString());
   LastWriteError = ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|GetLastError();
  }

  if (!readFilePointer)
   break;
  if (nTry < nNumRetries) {
   uprintf("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);

   Sleep(CheckDriveAccess(WRITE_TIMEOUT, FALSE));
  }
 }
 if (SCODE_CODE(GetLastError()) == ERROR_SUCCESS)
  SetLastError(ERROR_SEVERITY_ERROR|FAC(FACILITY_STORAGE)|ERROR_WRITE_FAULT);
 return FALSE;
}
