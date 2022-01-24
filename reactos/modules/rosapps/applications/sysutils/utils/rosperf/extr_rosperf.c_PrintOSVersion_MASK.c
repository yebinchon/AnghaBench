#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int dwOSVersionInfoSize; char* szCSDVersion; int dwPlatformId; int dwMajorVersion; int dwMinorVersion; int wSuiteMask; int dwBuildNumber; int /*<<< orphan*/  wProductType; } ;
typedef  int /*<<< orphan*/  OSVERSIONINFOW ;
typedef  TYPE_1__ OSVERSIONINFOEXW ;
typedef  int /*<<< orphan*/  OSVERSIONINFO ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  VER_NT_DOMAIN_CONTROLLER ; 
 int /*<<< orphan*/  VER_NT_SERVER ; 
 int /*<<< orphan*/  VER_NT_WORKSTATION ; 
#define  VER_PLATFORM_WIN32_NT 130 
#define  VER_PLATFORM_WIN32_WINDOWS 129 
#define  VER_PLATFORM_WIN32s 128 
 int VER_SUITE_BLADE ; 
 int VER_SUITE_DATACENTER ; 
 int VER_SUITE_ENTERPRISE ; 
 int VER_SUITE_PERSONAL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(void)
{
#define BUFSIZE 160
  OSVERSIONINFOEXW VersionInfo;
  BOOL OsVersionInfoEx;
  HKEY hKey;
  WCHAR ProductType[BUFSIZE];
  DWORD BufLen;
  LONG Ret;
  unsigned RosVersionLen;
  LPWSTR RosVersion;

  /* Try calling GetVersionEx using the OSVERSIONINFOEX structure.
   * If that fails, try using the OSVERSIONINFO structure. */

  FUNC4(&VersionInfo, sizeof(OSVERSIONINFOEXW));
  VersionInfo.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEXW);

  OsVersionInfoEx = FUNC0((OSVERSIONINFOW *) &VersionInfo);
  if (! OsVersionInfoEx)
    {
      VersionInfo.dwOSVersionInfoSize = sizeof (OSVERSIONINFO);
      if (! FUNC0((OSVERSIONINFOW *) &VersionInfo))
        {
          return;
        }
    }

  RosVersion = VersionInfo.szCSDVersion + FUNC7(VersionInfo.szCSDVersion) + 1;
  RosVersionLen = sizeof(VersionInfo.szCSDVersion) / sizeof(VersionInfo.szCSDVersion[0]) -
                  (RosVersion - VersionInfo.szCSDVersion);
  if (7 <= RosVersionLen && 0 == FUNC5(RosVersion, L"ReactOS", 7))
    {
      FUNC8(L"Running on %s\n", RosVersion);
      return;
    }

  switch (VersionInfo.dwPlatformId)
    {
      /* Test for the Windows NT product family. */
      case VER_PLATFORM_WIN32_NT:

        /* Test for the specific product. */
        if (5 == VersionInfo.dwMajorVersion && 2 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows Server 2003, ");
          }
        else if (5 == VersionInfo.dwMajorVersion && 1 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows XP ");
          }
        else if (5 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows 2000 ");
          }
        else if (VersionInfo.dwMajorVersion <= 4 )
          {
            FUNC8(L"Running on Microsoft Windows NT ");
          }

        /* Test for specific product on Windows NT 4.0 SP6 and later. */
        if (OsVersionInfoEx)
          {
            /* Test for the workstation type. */
            if (VER_NT_WORKSTATION == VersionInfo.wProductType)
              {
                if (4 == VersionInfo.dwMajorVersion)
                  {
                    FUNC8(L"Workstation 4.0 ");
                  }
                else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_PERSONAL))
                  {
                    FUNC8(L"Home Edition ");
                  }
                else
                  {
                    FUNC8(L"Professional ");
                  }
              }

            /* Test for the server type. */
            else if (VER_NT_SERVER == VersionInfo.wProductType  ||
                     VER_NT_DOMAIN_CONTROLLER == VersionInfo.wProductType)
              {
                if (5 == VersionInfo.dwMajorVersion && 2 == VersionInfo.dwMinorVersion)
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_DATACENTER))
                      {
                        FUNC8(L"Datacenter Edition ");
                      }
                    else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        FUNC8(L"Enterprise Edition ");
                      }
                    else if (VER_SUITE_BLADE == VersionInfo.wSuiteMask)
                      {
                        FUNC8(L"Web Edition ");
                      }
                    else
                      {
                        FUNC8(L"Standard Edition ");
                      }
                  }

                else if (5 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_DATACENTER))
                      {
                        FUNC8(L"Datacenter Server ");
                      }
                    else if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        FUNC8(L"Advanced Server " );
                      }
                    else
                      {
                        FUNC8(L"Server " );
                      }
                  }

                else  /* Windows NT 4.0 */
                  {
                    if (0 != (VersionInfo.wSuiteMask & VER_SUITE_ENTERPRISE))
                      {
                        FUNC8(L"Server 4.0, Enterprise Edition ");
                      }
                    else
                      {
                        FUNC8(L"Server 4.0 ");
                      }
                  }
              }
          }
        else  /* Test for specific product on Windows NT 4.0 SP5 and earlier */
          {
            BufLen = BUFSIZE;

            Ret = FUNC2(HKEY_LOCAL_MACHINE,
                                L"SYSTEM\\CurrentControlSet\\Control\\ProductOptions",
                                0, KEY_QUERY_VALUE, &hKey);
            if (ERROR_SUCCESS != Ret)
              {
                return;
              }

            Ret = FUNC3(hKey, L"ProductType", NULL, NULL,
                                   (LPBYTE) ProductType, &BufLen);
            if (ERROR_SUCCESS != Ret || BUFSIZE < BufLen)
              {
                return;
              }

            FUNC1(hKey);

            if (0 == FUNC6(L"WINNT", ProductType))
              {
                FUNC8(L"Workstation ");
              }
            else if (0 == FUNC6(L"LANMANNT", ProductType))
              {
                FUNC8(L"Server ");
              }
            else if (0 == FUNC6(L"SERVERNT", ProductType))
              {
                FUNC8(L"Advanced Server ");
              }

            FUNC8(L"%d.%d ", VersionInfo.dwMajorVersion, VersionInfo.dwMinorVersion);
          }

        /* Display service pack (if any) and build number. */

        if (4 == VersionInfo.dwMajorVersion &&
            0 == FUNC6(VersionInfo.szCSDVersion, L"Service Pack 6"))
          {
            /* Test for SP6 versus SP6a. */
            Ret = FUNC2(HKEY_LOCAL_MACHINE,
                                L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Hotfix\\Q246009",
                                0, KEY_QUERY_VALUE, &hKey);
            if (ERROR_SUCCESS == Ret)
              {
                FUNC8(L"Service Pack 6a (Build %d)\n", VersionInfo.dwBuildNumber & 0xFFFF);
              }
            else /* Windows NT 4.0 prior to SP6a */
              {
                FUNC8(L"%s (Build %d)\n",
                        VersionInfo.szCSDVersion,
                        VersionInfo.dwBuildNumber & 0xFFFF);
              }

            FUNC1(hKey);
          }
        else /* not Windows NT 4.0 */
          {
            FUNC8(L"%s (Build %d)\n",
                    VersionInfo.szCSDVersion,
                    VersionInfo.dwBuildNumber & 0xFFFF);
          }


        break;

      /* Test for the Windows Me/98/95. A bit silly since we're using Unicode... */
      case VER_PLATFORM_WIN32_WINDOWS:

        if (4 == VersionInfo.dwMajorVersion && 0 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows 95 ");
            if (L'C' == VersionInfo.szCSDVersion[1] || L'B' == VersionInfo.szCSDVersion[1])
              {
                FUNC8(L"OSR2");
              }
          }

        else if (4 == VersionInfo.dwMajorVersion && 10 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows 98 ");
            if (L'A' == VersionInfo.szCSDVersion[1])
              {
                FUNC8(L"SE");
              }
          }

        else if (4 == VersionInfo.dwMajorVersion && 90 == VersionInfo.dwMinorVersion)
          {
            FUNC8(L"Running on Microsoft Windows Millennium Edition");
          }
        FUNC8(L"\n");
        break;

      case VER_PLATFORM_WIN32s: /* Even silier... */

        FUNC8(L"Running on Microsoft Win32s\n");
        break;
    }
}