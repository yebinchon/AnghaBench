
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* PWDCHANGEPASSWORD ) (int ,int ,int ,int ) ;
typedef int HWND ;
typedef int * HINSTANCE ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int *) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibrary (int ) ;
 int TRUE ;
 int _T (char*) ;

BOOL ChangePassword(HWND hwnd)
{

 HINSTANCE hmpr = LoadLibrary(_T("MPR.DLL"));
 PWDCHANGEPASSWORD PwdChangePassword;

 if(hmpr == ((void*)0))
  return FALSE;

 PwdChangePassword = (PWDCHANGEPASSWORD)GetProcAddress(hmpr, "PwdChangePasswordA");

 if(PwdChangePassword == ((void*)0))
 {
  FreeLibrary(hmpr);
  return FALSE;
 }

 PwdChangePassword(_T("SCRSAVE"), hwnd, 0, 0);
 FreeLibrary(hmpr);

 return TRUE;
}
