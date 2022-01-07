
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBOOL ;
typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int UpdateDriverForPlugAndPlayDevicesW (int ,int ,int ,int ,int ) ;
 int wFullInfPath ;
 int wHardwareId ;
 int wconvert (char const*) ;
 int wfree (char const*) ;

__attribute__((used)) static __inline BOOL UpdateDriverForPlugAndPlayDevicesU(HWND hwndParent, const char* HardwareId, const char* FullInfPath,
              DWORD InstallFlags, PBOOL bRebootRequired)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(HardwareId);
 wconvert(FullInfPath);
 ret = UpdateDriverForPlugAndPlayDevicesW(hwndParent, wHardwareId, wFullInfPath, InstallFlags, bRebootRequired);
 err = GetLastError();
 wfree(HardwareId);
 wfree(FullInfPath);
 SetLastError(err);
 return ret;
}
