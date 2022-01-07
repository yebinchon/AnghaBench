
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int DWORD ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int strlen (int ) ;

LPSTR RPCRT4_strndupA(LPCSTR src, INT slen)
{
  DWORD len;
  LPSTR s;
  if (!src) return ((void*)0);
  if (slen == -1) slen = strlen(src);
  len = slen;
  s = HeapAlloc(GetProcessHeap(), 0, len+1);
  memcpy(s, src, len);
  s[len] = 0;
  return s;
}
