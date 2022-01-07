
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwValue ;
typedef int LPCTSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 int REG_DWORD ;
 int RegSetValueEx (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void SaveDWORD(HKEY hKey, LPCTSTR pszValueName, DWORD dwValue)
{
    RegSetValueEx(hKey, pszValueName, 0, REG_DWORD, (LPBYTE)&dwValue, sizeof(dwValue));
}
