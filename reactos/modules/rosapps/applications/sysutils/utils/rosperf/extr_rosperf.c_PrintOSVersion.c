
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int dwOSVersionInfoSize; char* szCSDVersion; int dwPlatformId; int dwMajorVersion; int dwMinorVersion; int wSuiteMask; int dwBuildNumber; int wProductType; } ;
typedef int OSVERSIONINFOW ;
typedef TYPE_1__ OSVERSIONINFOEXW ;
typedef int OSVERSIONINFO ;
typedef char* LPWSTR ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int BUFSIZE ;
 int ERROR_SUCCESS ;
 scalar_t__ GetVersionExW (int *) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;
 int VER_NT_DOMAIN_CONTROLLER ;
 int VER_NT_SERVER ;
 int VER_NT_WORKSTATION ;



 int VER_SUITE_BLADE ;
 int VER_SUITE_DATACENTER ;
 int VER_SUITE_ENTERPRISE ;
 int VER_SUITE_PERSONAL ;
 int ZeroMemory (TYPE_1__*,int) ;
 scalar_t__ _wcsnicmp (char*,char*,int) ;
 int lstrcmpiW (char*,char*) ;
 int wcslen (char*) ;
 int wprintf (char*,...) ;

__attribute__((used)) static void
PrintOSVersion(void)
{

  OSVERSIONINFOEXW VersionInfo;
  BOOL OsVersionInfoEx;
  HKEY hKey;
  WCHAR ProductType[160];
  DWORD BufLen;
  LONG Ret;
  unsigned RosVersionLen;
  LPWSTR RosVersion;




  ZeroMemory(&VersionInfo, sizeof(OSVERSIONINFOEXW));
  VersionInfo.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEXW);

  OsVersionInfoEx = GetVersionExW((OSVERSIONINFOW *) &VersionInfo);
  if (! OsVersionInfoEx)
    {
      VersionInfo.dwOSVersionInfoSize = sizeof (OSVERSIONINFO);
      if (! GetVersionExW((OSVERSIONINFOW *) &VersionInfo))
        {
          return;
        }
    }

  RosVersion = VersionInfo.szCSDVersion + wcslen(VersionInfo.szCSDVersion) + 1;
  RosVersionLen = sizeof(VersionInfo.szCSDVersion) / sizeof(VersionInfo.szCSDVersion[0]) -
                  (RosVersion - VersionInfo.szCSDVersion);
  if (7 <= RosVersionLen && 0 == _wcsnicmp(RosVersion, L"ReactOS", 7))
    {
      wprintf(L"Running on %s\n", RosVersion);
      return;
    }

  switch (VersionInfo.dwPlatformId)
    {

      case 130:


        if (5 == VersionInfo.dwMajorVersion && 2 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows Server 2003, ");
          }
        else if (5 == VersionInfo.dwMajorVersion && 1 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows XP ");
          }
        else if (5 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows 2000 ");
          }
        else if (VersionInfo.dwMajorVersion <= 4 )
          {
            wprintf(L"Running on Microsoft Windows NT ");
          }


        if (OsVersionInfoEx)
          {

            if (VER_NT_WORKSTATION == VersionInfo.wProductType)
              {
                if (4 == VersionInfo.dwMajorVersion)
                  {
                    wprintf(L"Workstation 4.0 ");
                  }
                else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_PERSONAL))
                  {
                    wprintf(L"Home Edition ");
                  }
                else
                  {
                    wprintf(L"Professional ");
                  }
              }


            else if (VER_NT_SERVER == VersionInfo.wProductType ||
                     VER_NT_DOMAIN_CONTROLLER == VersionInfo.wProductType)
              {
                if (5 == VersionInfo.dwMajorVersion && 2 == VersionInfo.dwMinorVersion)
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_DATACENTER))
                      {
                        wprintf(L"Datacenter Edition ");
                      }
                    else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        wprintf(L"Enterprise Edition ");
                      }
                    else if (VER_SUITE_BLADE == VersionInfo.wSuiteMask)
                      {
                        wprintf(L"Web Edition ");
                      }
                    else
                      {
                        wprintf(L"Standard Edition ");
                      }
                  }

                else if (5 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_DATACENTER))
                      {
                        wprintf(L"Datacenter Server ");
                      }
                    else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        wprintf(L"Advanced Server " );
                      }
                    else
                      {
                        wprintf(L"Server " );
                      }
                  }

                else
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        wprintf(L"Server 4.0, Enterprise Edition ");
                      }
                    else
                      {
                        wprintf(L"Server 4.0 ");
                      }
                  }
              }
          }
        else
          {
            BufLen = 160;

            Ret = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                                L"SYSTEM\\CurrentControlSet\\Control\\ProductOptions",
                                0, KEY_QUERY_VALUE, &hKey);
            if (ERROR_SUCCESS != Ret)
              {
                return;
              }

            Ret = RegQueryValueExW(hKey, L"ProductType", ((void*)0), ((void*)0),
                                   (LPBYTE) ProductType, &BufLen);
            if (ERROR_SUCCESS != Ret || 160 < BufLen)
              {
                return;
              }

            RegCloseKey(hKey);

            if (0 == lstrcmpiW(L"WINNT", ProductType))
              {
                wprintf(L"Workstation ");
              }
            else if (0 == lstrcmpiW(L"LANMANNT", ProductType))
              {
                wprintf(L"Server ");
              }
            else if (0 == lstrcmpiW(L"SERVERNT", ProductType))
              {
                wprintf(L"Advanced Server ");
              }

            wprintf(L"%d.%d ", VersionInfo.dwMajorVersion, VersionInfo.dwMinorVersion);
          }



        if (4 == VersionInfo.dwMajorVersion &&
            0 == lstrcmpiW(VersionInfo.szCSDVersion, L"Service Pack 6"))
          {

            Ret = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                                L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Hotfix\\Q246009",
                                0, KEY_QUERY_VALUE, &hKey);
            if (ERROR_SUCCESS == Ret)
              {
                wprintf(L"Service Pack 6a (Build %d)\n", VersionInfo.dwBuildNumber & 0xFFFF);
              }
            else
              {
                wprintf(L"%s (Build %d)\n",
                        VersionInfo.szCSDVersion,
                        VersionInfo.dwBuildNumber & 0xFFFF);
              }

            RegCloseKey(hKey);
          }
        else
          {
            wprintf(L"%s (Build %d)\n",
                    VersionInfo.szCSDVersion,
                    VersionInfo.dwBuildNumber & 0xFFFF);
          }


        break;


      case 129:

        if (4 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows 95 ");
            if (L'C' == VersionInfo.szCSDVersion[1] || L'B' == VersionInfo.szCSDVersion[1])
              {
                wprintf(L"OSR2");
              }
          }

        else if (4 == VersionInfo.dwMajorVersion && 10 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows 98 ");
            if (L'A' == VersionInfo.szCSDVersion[1])
              {
                wprintf(L"SE");
              }
          }

        else if (4 == VersionInfo.dwMajorVersion && 90 == VersionInfo.dwMinorVersion)
          {
            wprintf(L"Running on Microsoft Windows Millennium Edition");
          }
        wprintf(L"\n");
        break;

      case 128:

        wprintf(L"Running on Microsoft Win32s\n");
        break;
    }
}
