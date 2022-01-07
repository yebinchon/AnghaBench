
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LCID ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int GetLocaleInfoW (int ,int,char*,int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int memcpy (char*,char*,int) ;
 int strlenW (char*) ;

__attribute__((used)) static WCHAR* NLS_GetLocaleString(LCID lcid, DWORD dwFlags)
{
  WCHAR szBuff[80], *str;
  DWORD dwLen;

  szBuff[0] = '\0';
  GetLocaleInfoW(lcid, dwFlags, szBuff, ARRAY_SIZE(szBuff));
  dwLen = strlenW(szBuff) + 1;
  str = HeapAlloc(GetProcessHeap(), 0, dwLen * sizeof(WCHAR));
  if (str)
    memcpy(str, szBuff, dwLen * sizeof(WCHAR));
  return str;
}
