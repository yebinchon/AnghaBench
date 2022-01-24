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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  wMilliseconds; int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; int /*<<< orphan*/  wYear; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  GlobalFifoEnable ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_OPTION_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(void)
{
  HKEY hKey = NULL,hKey1;
  DWORD dwDisposition;
  DWORD dwError;
  DWORD  RegDataType, RegDataSize;
  BOOL GlobalFifoEnable;
  HKEY hPortKey;
  DWORD RegDisposition;
  WCHAR szClass[260];
  DWORD cchClass;
  DWORD cSubKeys;
  DWORD cchMaxSubkey;
  DWORD cchMaxClass;
  DWORD cValues;
  DWORD cchMaxValueName;
  DWORD cbMaxValueData;
  DWORD cbSecurityDescriptor;
  FILETIME ftLastWriteTime;
  SYSTEMTIME LastWriteTime;

  FUNC7 ("RegOpenKeyExW HKLM\\System\\Setup: ");
  dwError = FUNC3(HKEY_LOCAL_MACHINE,
                           L"System\\Setup",
                           0,
                           KEY_ALL_ACCESS,
                           &hKey1);
  FUNC7("\t\tdwError =%x\n",dwError);
  if (dwError == ERROR_SUCCESS)
    {
      FUNC7("RegQueryInfoKeyW: ");
      cchClass=260;
      dwError = FUNC4(hKey1
	, szClass, &cchClass, NULL, &cSubKeys
	, &cchMaxSubkey, &cchMaxClass, &cValues, &cchMaxValueName
	, &cbMaxValueData, &cbSecurityDescriptor, &ftLastWriteTime);
      FUNC7 ("\t\t\t\tdwError %x\n", dwError);
      FUNC0(&ftLastWriteTime,&LastWriteTime);
      FUNC7 ("\tnb of subkeys=%d,last write : %d/%d/%d %d:%02.2d'%02.2d''%03.3d\n",cSubKeys
		,LastWriteTime.wMonth
		,LastWriteTime.wDay
		,LastWriteTime.wYear
		,LastWriteTime.wHour
		,LastWriteTime.wMinute
		,LastWriteTime.wSecond
		,LastWriteTime.wMilliseconds
		);
    }


   FUNC7 ("RegOpenKeyExW: ");
   dwError = FUNC3(HKEY_LOCAL_MACHINE,
                           L"System\\ControlSet001\\Services\\Serial",
                           0,
                           KEY_ALL_ACCESS,
                           &hKey);
   FUNC7 ("\t\t\t\t\tdwError %x\n", dwError);
   RegDataSize = sizeof(GlobalFifoEnable);
   if (dwError == ERROR_SUCCESS)
   {
     FUNC7 ("RegQueryValueExW: ");
     dwError = FUNC5(hKey,
                        L"ForceFifoEnable",
                        NULL,
                        &RegDataType,
                        (PBYTE)&GlobalFifoEnable,
                        &RegDataSize);
    FUNC7("\t\t\t\tdwError =%x\n",dwError);
    if (dwError == 0)
    {
        FUNC7("\tValue:DT=%d, DS=%d, Value=%d\n"
		,RegDataType
		,RegDataSize
		,GlobalFifoEnable);
    }
   }
   FUNC7 ("RegCreateKeyExW: ");
   dwError = FUNC2(hKey,
                         L"Parameters\\Serial001",
                         0,
                         NULL,
                         0,
                         KEY_ALL_ACCESS,
                         NULL,
                         &hPortKey,
                         &RegDisposition
                        );
   FUNC7 ("\t\t\t\tdwError %x\n", dwError);

   FUNC7 ("RegCreateKeyExW: ");
   dwError = FUNC2 (HKEY_LOCAL_MACHINE,
                              L"Software\\test4reactos\\test",
                              0,
                              NULL,
                              REG_OPTION_NON_VOLATILE,
                              KEY_ALL_ACCESS,
                              NULL,
                              &hKey,
                              &dwDisposition);

   FUNC7 ("\t\t\t\tdwError %x ", dwError);
   FUNC7 ("dwDisposition %x\n", dwDisposition);
   if (dwError == ERROR_SUCCESS)
   {
     FUNC7 ("RegSetValueExW: ");
     dwError = FUNC6 (hKey,
                             L"TestValue",
                             0,
                             REG_SZ,
                             (BYTE*)L"TestString",
                             20);

     FUNC7 ("\t\t\t\tdwError %x\n", dwError);
     FUNC7 ("RegCloseKey: ");
     dwError = FUNC1 (hKey);
     FUNC7 ("\t\t\t\t\tdwError %x\n", dwError);
   }
   FUNC7 ("\n\n");

   hKey = NULL;

   FUNC7 ("RegCreateKeyExW: ");
   dwError = FUNC2 (HKEY_LOCAL_MACHINE,
                              L"software\\Test",
                              0,
                              NULL,
                              REG_OPTION_VOLATILE,
                              KEY_ALL_ACCESS,
                              NULL,
                              &hKey,
                              &dwDisposition);

   FUNC7 ("\t\t\t\tdwError %x ", dwError);
   FUNC7 ("dwDisposition %x\n", dwDisposition);


   if (dwError == ERROR_SUCCESS)
   {
     FUNC7("RegQueryInfoKeyW: ");
     cchClass=260;
     dwError = FUNC4(hKey
	, szClass, &cchClass, NULL, &cSubKeys
	, &cchMaxSubkey, &cchMaxClass, &cValues, &cchMaxValueName
	, &cbMaxValueData, &cbSecurityDescriptor, &ftLastWriteTime);
     FUNC7 ("\t\t\t\tdwError %x\n", dwError);
     FUNC0(&ftLastWriteTime,&LastWriteTime);
     FUNC7 ("\tnb of subkeys=%d,last write : %d/%d/%d %d:%02.2d'%02.2d''%03.3d\n",cSubKeys
		,LastWriteTime.wMonth
		,LastWriteTime.wDay
		,LastWriteTime.wYear
		,LastWriteTime.wHour
		,LastWriteTime.wMinute
		,LastWriteTime.wSecond
		,LastWriteTime.wMilliseconds
		);
     FUNC7 ("RegCloseKey: ");
     dwError = FUNC1 (hKey);
     FUNC7 ("\t\t\t\t\tdwError %x\n", dwError);
   }
   FUNC7 ("\nTests done...\n");
}