
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPDWORD ;
typedef int * LPCSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ GetVolumeInformationW (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 int walloc (int *,int ) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,int *,int ) ;
 int wconvert (int *) ;
 int wfree (int *) ;
 int wlpFileSystemNameBuffer ;
 int wlpRootPathName ;
 int wlpVolumeNameBuffer ;

__attribute__((used)) static __inline BOOL GetVolumeInformationU(LPCSTR lpRootPathName, LPSTR lpVolumeNameBuffer,
 DWORD nVolumeNameSize, LPDWORD lpVolumeSerialNumber, LPDWORD lpMaximumComponentLength,
 LPDWORD lpFileSystemFlags, LPSTR lpFileSystemNameBuffer, DWORD nFileSystemNameSize)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpRootPathName);

 walloc(lpVolumeNameBuffer, nVolumeNameSize);

 walloc(lpFileSystemNameBuffer, nFileSystemNameSize);

 ret = GetVolumeInformationW(wlpRootPathName, wlpVolumeNameBuffer, nVolumeNameSize,
  lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags,
  wlpFileSystemNameBuffer, nFileSystemNameSize);
 err = GetLastError();
 if (ret) {
  if ( ((lpVolumeNameBuffer != ((void*)0)) && (wchar_to_utf8_no_alloc(wlpVolumeNameBuffer,
   lpVolumeNameBuffer, nVolumeNameSize) == 0))
    || ((lpFileSystemNameBuffer != ((void*)0)) && (wchar_to_utf8_no_alloc(wlpFileSystemNameBuffer,
   lpFileSystemNameBuffer, nFileSystemNameSize) == 0)) ) {
   err = GetLastError();
   ret = FALSE;
  }
 }
 wfree(lpVolumeNameBuffer);
 wfree(lpFileSystemNameBuffer);
 wfree(lpRootPathName);
 SetLastError(err);
 return ret;
}
