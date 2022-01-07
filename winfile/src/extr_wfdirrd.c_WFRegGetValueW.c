
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int LPDWORD ;
typedef int LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 int RegOpenKey (int ,int ,int *) ;
 int RegQueryValueEx (int ,int ,int *,int ,int ,int ) ;

LONG WFRegGetValueW(HKEY hkey, LPCWSTR lpSubKey, LPCWSTR lpValue, LPDWORD pdwType, PVOID pvData, LPDWORD pcbData)
{
 DWORD dwStatus;
 HKEY hkeySub;

 if ((dwStatus = RegOpenKey(hkey, lpSubKey, &hkeySub)) == ERROR_SUCCESS)
 {
   dwStatus = RegQueryValueEx(hkeySub, lpValue, ((void*)0), pdwType, pvData, pcbData);

   RegCloseKey(hkeySub);
 }

 return dwStatus;
}
