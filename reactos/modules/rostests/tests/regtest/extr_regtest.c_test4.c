
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int wMilliseconds; int wSecond; int wMinute; int wHour; int wYear; int wDay; int wMonth; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int PBYTE ;
typedef int * HKEY ;
typedef int GlobalFifoEnable ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FileTimeToSystemTime (int *,TYPE_1__*) ;
 int * HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_OPTION_VOLATILE ;
 int REG_SZ ;
 scalar_t__ RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExW (int *,char*,int ,int *,int ,int ,int *,int **,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int *,char*,int ,int ,int **) ;
 scalar_t__ RegQueryInfoKeyW (int *,int *,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ RegSetValueExW (int *,char*,int ,int ,int *,int) ;
 int dprintf (char*,...) ;

void test4(void)
{
  HKEY hKey = ((void*)0),hKey1;
  DWORD dwDisposition;
  DWORD dwError;
  DWORD RegDataType, RegDataSize;
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

  dprintf ("RegOpenKeyExW HKLM\\System\\Setup: ");
  dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                           L"System\\Setup",
                           0,
                           KEY_ALL_ACCESS,
                           &hKey1);
  dprintf("\t\tdwError =%x\n",dwError);
  if (dwError == ERROR_SUCCESS)
    {
      dprintf("RegQueryInfoKeyW: ");
      cchClass=260;
      dwError = RegQueryInfoKeyW(hKey1
 , szClass, &cchClass, ((void*)0), &cSubKeys
 , &cchMaxSubkey, &cchMaxClass, &cValues, &cchMaxValueName
 , &cbMaxValueData, &cbSecurityDescriptor, &ftLastWriteTime);
      dprintf ("\t\t\t\tdwError %x\n", dwError);
      FileTimeToSystemTime(&ftLastWriteTime,&LastWriteTime);
      dprintf ("\tnb of subkeys=%d,last write : %d/%d/%d %d:%02.2d'%02.2d''%03.3d\n",cSubKeys
  ,LastWriteTime.wMonth
  ,LastWriteTime.wDay
  ,LastWriteTime.wYear
  ,LastWriteTime.wHour
  ,LastWriteTime.wMinute
  ,LastWriteTime.wSecond
  ,LastWriteTime.wMilliseconds
  );
    }


   dprintf ("RegOpenKeyExW: ");
   dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                           L"System\\ControlSet001\\Services\\Serial",
                           0,
                           KEY_ALL_ACCESS,
                           &hKey);
   dprintf ("\t\t\t\t\tdwError %x\n", dwError);
   RegDataSize = sizeof(GlobalFifoEnable);
   if (dwError == ERROR_SUCCESS)
   {
     dprintf ("RegQueryValueExW: ");
     dwError = RegQueryValueExW(hKey,
                        L"ForceFifoEnable",
                        ((void*)0),
                        &RegDataType,
                        (PBYTE)&GlobalFifoEnable,
                        &RegDataSize);
    dprintf("\t\t\t\tdwError =%x\n",dwError);
    if (dwError == 0)
    {
        dprintf("\tValue:DT=%d, DS=%d, Value=%d\n"
  ,RegDataType
  ,RegDataSize
  ,GlobalFifoEnable);
    }
   }
   dprintf ("RegCreateKeyExW: ");
   dwError = RegCreateKeyExW(hKey,
                         L"Parameters\\Serial001",
                         0,
                         ((void*)0),
                         0,
                         KEY_ALL_ACCESS,
                         ((void*)0),
                         &hPortKey,
                         &RegDisposition
                        );
   dprintf ("\t\t\t\tdwError %x\n", dwError);

   dprintf ("RegCreateKeyExW: ");
   dwError = RegCreateKeyExW (HKEY_LOCAL_MACHINE,
                              L"Software\\test4reactos\\test",
                              0,
                              ((void*)0),
                              REG_OPTION_NON_VOLATILE,
                              KEY_ALL_ACCESS,
                              ((void*)0),
                              &hKey,
                              &dwDisposition);

   dprintf ("\t\t\t\tdwError %x ", dwError);
   dprintf ("dwDisposition %x\n", dwDisposition);
   if (dwError == ERROR_SUCCESS)
   {
     dprintf ("RegSetValueExW: ");
     dwError = RegSetValueExW (hKey,
                             L"TestValue",
                             0,
                             REG_SZ,
                             (BYTE*)L"TestString",
                             20);

     dprintf ("\t\t\t\tdwError %x\n", dwError);
     dprintf ("RegCloseKey: ");
     dwError = RegCloseKey (hKey);
     dprintf ("\t\t\t\t\tdwError %x\n", dwError);
   }
   dprintf ("\n\n");

   hKey = ((void*)0);

   dprintf ("RegCreateKeyExW: ");
   dwError = RegCreateKeyExW (HKEY_LOCAL_MACHINE,
                              L"software\\Test",
                              0,
                              ((void*)0),
                              REG_OPTION_VOLATILE,
                              KEY_ALL_ACCESS,
                              ((void*)0),
                              &hKey,
                              &dwDisposition);

   dprintf ("\t\t\t\tdwError %x ", dwError);
   dprintf ("dwDisposition %x\n", dwDisposition);


   if (dwError == ERROR_SUCCESS)
   {
     dprintf("RegQueryInfoKeyW: ");
     cchClass=260;
     dwError = RegQueryInfoKeyW(hKey
 , szClass, &cchClass, ((void*)0), &cSubKeys
 , &cchMaxSubkey, &cchMaxClass, &cValues, &cchMaxValueName
 , &cbMaxValueData, &cbSecurityDescriptor, &ftLastWriteTime);
     dprintf ("\t\t\t\tdwError %x\n", dwError);
     FileTimeToSystemTime(&ftLastWriteTime,&LastWriteTime);
     dprintf ("\tnb of subkeys=%d,last write : %d/%d/%d %d:%02.2d'%02.2d''%03.3d\n",cSubKeys
  ,LastWriteTime.wMonth
  ,LastWriteTime.wDay
  ,LastWriteTime.wYear
  ,LastWriteTime.wHour
  ,LastWriteTime.wMinute
  ,LastWriteTime.wSecond
  ,LastWriteTime.wMilliseconds
  );
     dprintf ("RegCloseKey: ");
     dwError = RegCloseKey (hKey);
     dprintf ("\t\t\t\t\tdwError %x\n", dwError);
   }
   dprintf ("\nTests done...\n");
}
