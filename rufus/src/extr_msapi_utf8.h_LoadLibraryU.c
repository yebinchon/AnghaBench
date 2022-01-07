
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int HMODULE ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int LoadLibraryW (int ) ;
 int SetLastError (int ) ;
 int wconvert (int ) ;
 int wfree (int ) ;
 int wlpFileName ;

__attribute__((used)) static __inline HMODULE LoadLibraryU(LPCSTR lpFileName)
{
 HMODULE ret;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpFileName);
 ret = LoadLibraryW(wlpFileName);
 err = GetLastError();
 wfree(lpFileName);
 SetLastError(err);
 return ret;
}
