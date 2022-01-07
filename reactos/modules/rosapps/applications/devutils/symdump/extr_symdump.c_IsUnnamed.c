
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int * StrStrW (int *,char*) ;
 int TRUE ;

BOOL
IsUnnamed(WCHAR *pszName)
{
 if ((StrStrW(pszName, L"__unnamed") != ((void*)0)) ||
         (StrStrW(pszName, L"<unnamed-tag>") != ((void*)0)))
 {
  return TRUE;
 }
 return FALSE;
}
