
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTempFileNameW (int ,int ,int ,int ) ;
 int MAX_PATH ;
 int SetLastError (scalar_t__) ;
 int walloc (char*,int ) ;
 scalar_t__ wchar_to_utf8_no_alloc (int ,char*,int ) ;
 int wconvert (char*) ;
 int wfree (char*) ;
 int wlpPathName ;
 int wlpPrefixString ;
 int wlpTempFileName ;

__attribute__((used)) static __inline DWORD GetTempFileNameU(char* lpPathName, char* lpPrefixString, UINT uUnique, char* lpTempFileName)
{
 DWORD ret = 0, err = ERROR_INVALID_DATA;
 wconvert(lpPathName);
 wconvert(lpPrefixString);

 walloc(lpTempFileName, MAX_PATH);
 ret = GetTempFileNameW(wlpPathName, wlpPrefixString, uUnique, wlpTempFileName);
 err = GetLastError();
 if ((ret != 0) && ((ret = wchar_to_utf8_no_alloc(wlpTempFileName, lpTempFileName, MAX_PATH)) == 0)) {
  err = GetLastError();
 }
 wfree(lpTempFileName);
 wfree(lpPrefixString);
 wfree(lpPathName);
 SetLastError(err);
 return ret;
}
