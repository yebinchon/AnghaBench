
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int ,int *,int *) ;

LPSTR RPCRT4_strdupWtoA(LPCWSTR src)
{
  DWORD len;
  LPSTR s;
  if (!src) return ((void*)0);
  len = WideCharToMultiByte(CP_ACP, 0, src, -1, ((void*)0), 0, ((void*)0), ((void*)0));
  s = HeapAlloc(GetProcessHeap(), 0, len);
  WideCharToMultiByte(CP_ACP, 0, src, -1, s, len, ((void*)0), ((void*)0));
  return s;
}
