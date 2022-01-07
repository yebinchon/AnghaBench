
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int strlenW (int ) ;

LPWSTR RPCRT4_strndupW(LPCWSTR src, INT slen)
{
  DWORD len;
  LPWSTR s;
  if (!src) return ((void*)0);
  if (slen == -1) slen = strlenW(src);
  len = slen;
  s = HeapAlloc(GetProcessHeap(), 0, (len+1)*sizeof(WCHAR));
  memcpy(s, src, len*sizeof(WCHAR));
  s[len] = 0;
  return s;
}
