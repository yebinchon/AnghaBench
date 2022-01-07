
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* VERIFYSCREENSAVEPWD ) (int ) ;
typedef int HWND ;
typedef int * HINSTANCE ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int *) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int GetVersion () ;
 int * LoadLibrary (int ) ;
 int TRUE ;
 int _T (char*) ;

BOOL VerifyPassword(HWND hwnd)
{





 HINSTANCE hpwdcpl;
 VERIFYSCREENSAVEPWD VerifyScreenSavePwd;
 BOOL fResult;

 if(GetVersion() < 0x80000000)
  return TRUE;

 hpwdcpl = LoadLibrary(_T("PASSWORD.CPL"));

 if(hpwdcpl == ((void*)0))
 {
  return FALSE;
 }


 VerifyScreenSavePwd = (VERIFYSCREENSAVEPWD)GetProcAddress(hpwdcpl, "VerifyScreenSavePwd");

 if(VerifyScreenSavePwd == ((void*)0))
 {
  FreeLibrary(hpwdcpl);
  return FALSE;
 }

 fResult = VerifyScreenSavePwd(hwnd);
 FreeLibrary(hpwdcpl);

 return fResult;
}
