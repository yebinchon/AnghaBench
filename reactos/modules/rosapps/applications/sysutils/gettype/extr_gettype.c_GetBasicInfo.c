
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int dwMajorVersion; int dwMinorVersion; int wSuiteMask; scalar_t__ wProductType; int szCSDVersion; scalar_t__ dwBuildNumber; } ;
typedef int TCHAR ;
typedef TYPE_1__* LPOSVERSIONINFOEX ;
typedef int DWORD ;


 int GetComputerName (int *,int*) ;
 scalar_t__ VER_NT_DOMAIN_CONTROLLER ;
 scalar_t__ VER_NT_SERVER ;
 scalar_t__ VER_NT_WORKSTATION ;
 int VER_SUITE_BLADE ;
 int VER_SUITE_DATACENTER ;
 int VER_SUITE_EMBEDDEDNT ;
 int VER_SUITE_ENTERPRISE ;
 int VER_SUITE_PERSONAL ;
 int VER_SUITE_SMALLBUSINESS ;
 int VER_SUITE_SMALLBUSINESS_RESTRICTED ;
 int _T (char*) ;
 int _stprintf (int *,int ,int,int,int,int ) ;
 int _tcscat (int *,int ) ;
 int _tcscpy (int *,int ) ;

VOID
GetBasicInfo(LPOSVERSIONINFOEX osvi, TCHAR * HostName, TCHAR * OSName, TCHAR * Version, TCHAR * Role, TCHAR * Components)
{

 DWORD bufCharCount = 1024;
 GetComputerName(HostName, &bufCharCount);



 if(osvi->dwMajorVersion == 4)
 {
  _tcscpy(OSName, _T("Microsoft Windows NT 4.0 "));
 }
 else if(osvi->dwMajorVersion == 5)
 {
  if(osvi->dwMinorVersion == 0)
  {
   _tcscpy(OSName, _T("Microsoft Windows 2000 "));
  }
  else if(osvi->dwMinorVersion == 1)
  {
   _tcscpy(OSName, _T("Microsoft Windows XP "));
  }
  else if(osvi->dwMinorVersion == 2)
  {
   _tcscpy(OSName, _T("Microsoft Windows Server 2003 "));
  }
 }
 else if(osvi->dwMajorVersion == 6)
 {
  _tcscpy(OSName, _T("Microsoft Windows Vista "));
 }
 else
 {
  _tcscpy(OSName, _T("Microsoft Windows "));
 }

 if(osvi->wSuiteMask & VER_SUITE_BLADE)
  _tcscat(OSName, _T("Web Edition"));
 if(osvi->wSuiteMask & VER_SUITE_DATACENTER)
  _tcscat(OSName, _T("Datacenter"));
 if(osvi->wSuiteMask & VER_SUITE_ENTERPRISE)
  _tcscat(OSName, _T("Enterprise"));
 if(osvi->wSuiteMask & VER_SUITE_EMBEDDEDNT)
  _tcscat(OSName, _T("Embedded"));
 if(osvi->wSuiteMask & VER_SUITE_PERSONAL)
  _tcscat(OSName, _T("Home Edition"));
 if(osvi->wSuiteMask & VER_SUITE_SMALLBUSINESS_RESTRICTED && osvi->wSuiteMask & VER_SUITE_SMALLBUSINESS)
  _tcscat(OSName, _T("Small Bussiness Edition"));


 _stprintf(Version, _T("%d.%d Build %d %s"),(int)osvi->dwMajorVersion,(int)osvi->dwMinorVersion,(int)osvi->dwBuildNumber, osvi->szCSDVersion);


 if(osvi->wProductType == VER_NT_DOMAIN_CONTROLLER)
  _tcscpy(Role, _T("Domain Controller"));
 else if(osvi->wProductType == VER_NT_SERVER)
  _tcscpy(Role, _T("Server"));
 else if(osvi->wProductType == VER_NT_WORKSTATION)
  _tcscpy(Role, _T("Workgroup"));


 _tcscat(Components, _T("Not Installed"));

}
