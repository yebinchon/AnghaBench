
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int PathGetDriveNumberW (int ) ;
 int SetLastError (int ) ;
 int wconvert (char*) ;
 int wfree (char*) ;
 int wlpPath ;

__attribute__((used)) static __inline int PathGetDriveNumberU(char* lpPath)
{
 int ret = 0;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpPath);
 ret = PathGetDriveNumberW(wlpPath);
 err = GetLastError();
 wfree(lpPath);
 SetLastError(err);
 return ret;
}
