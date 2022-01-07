
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PHKEY ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 int REG_SZ ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKey (scalar_t__,char*,scalar_t__*) ;
 scalar_t__ RegQueryValueEx (scalar_t__,char*,int *,int*,int ,int*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stricmp (char*,char*) ;

LONG
GetPnpKey(PHKEY PnpKey)
{
  LONG lError;
  char szBuffer[80];
  HKEY hAdapterKey;
  HKEY hBusKey;
  DWORD dwBus;
  DWORD dwType;
  DWORD dwSize;

  *PnpKey = 0;

  lError = RegOpenKey(HKEY_LOCAL_MACHINE,
        "HARDWARE\\DESCRIPTION\\System\\MultifunctionAdapter",
        &hAdapterKey);
  if (lError != ERROR_SUCCESS)
    return 0;


  for (dwBus = 0; ; dwBus++)
    {
      sprintf(szBuffer, "%lu", dwBus);

      lError = RegOpenKey(hAdapterKey,
     szBuffer,
     &hBusKey);
      if (lError != ERROR_SUCCESS)
 {
   RegCloseKey(hAdapterKey);
   return lError;
 }

      dwSize = 80;
      lError = RegQueryValueEx(hBusKey,
          "Identifier",
          ((void*)0),
          &dwType,
          (LPBYTE)szBuffer,
          &dwSize);
      if (lError != ERROR_SUCCESS)
 {
   RegCloseKey(hBusKey);
   RegCloseKey(hAdapterKey);
   return lError;
 }

      if (dwType == REG_SZ && stricmp(szBuffer, "pnp bios") == 0)
 {
   *PnpKey = hBusKey;
   RegCloseKey(hAdapterKey);
   return ERROR_SUCCESS;
 }

      RegCloseKey(hBusKey);
    }

  return 1;
}
