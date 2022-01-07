
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFileA (char*,int,int,int *,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 scalar_t__ FlushFileBuffers (scalar_t__) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int WindowsErrorString () ;
 int safe_closehandle (scalar_t__) ;
 int uprintf (char*,char,int ) ;

__attribute__((used)) static BOOL FlushDrive(char drive_letter)
{
 HANDLE hDrive = INVALID_HANDLE_VALUE;
 BOOL r = FALSE;
 char logical_drive[] = "\\\\.\\#:";

 logical_drive[4] = drive_letter;
 hDrive = CreateFileA(logical_drive, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE,
  ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if (hDrive == INVALID_HANDLE_VALUE) {
  uprintf("Failed to open %c: for flushing: %s", drive_letter, WindowsErrorString());
  goto out;
 }
 r = FlushFileBuffers(hDrive);
 if (r == FALSE)
  uprintf("Failed to flush %c: %s", drive_letter, WindowsErrorString());

out:
 safe_closehandle(hDrive);
 return r;
}
