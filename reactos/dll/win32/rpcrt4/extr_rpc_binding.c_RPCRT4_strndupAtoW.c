
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static LPWSTR RPCRT4_strndupAtoW(LPCSTR src, INT slen)
{
  DWORD len;
  LPWSTR s;
  if (!src) return ((void*)0);
  len = MultiByteToWideChar(CP_ACP, 0, src, slen, ((void*)0), 0);
  s = HeapAlloc(GetProcessHeap(), 0, len*sizeof(WCHAR));
  MultiByteToWideChar(CP_ACP, 0, src, slen, s, len);
  return s;
}
