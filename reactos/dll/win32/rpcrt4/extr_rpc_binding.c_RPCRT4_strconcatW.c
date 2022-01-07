
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int memcpy (char*,char*,int) ;
 int strlenW (char*) ;

__attribute__((used)) static LPWSTR RPCRT4_strconcatW(LPWSTR dst, LPCWSTR src)
{
  DWORD len = strlenW(dst), slen = strlenW(src);
  LPWSTR ndst = HeapReAlloc(GetProcessHeap(), 0, dst, (len+slen+2)*sizeof(WCHAR));
  if (!ndst)
  {
    HeapFree(GetProcessHeap(), 0, dst);
    return ((void*)0);
  }
  ndst[len] = ',';
  memcpy(ndst+len+1, src, (slen+1)*sizeof(WCHAR));
  return ndst;
}
