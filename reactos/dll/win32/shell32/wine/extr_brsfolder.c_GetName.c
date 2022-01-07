
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRRET ;
typedef int LPWSTR ;
typedef int LPSHELLFOLDER ;
typedef int LPCITEMIDLIST ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int IShellFolder_GetDisplayNameOf (int ,int ,int ,int *) ;
 int MAX_PATH ;
 scalar_t__ SUCCEEDED (int ) ;
 int StrRetToStrNW (int ,int ,int *,int ) ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL GetName(LPSHELLFOLDER lpsf, LPCITEMIDLIST lpi, DWORD dwFlags, LPWSTR lpFriendlyName)
{
 BOOL bSuccess=TRUE;
 STRRET str;

 TRACE("%p %p %x %p\n", lpsf, lpi, dwFlags, lpFriendlyName);
 if (SUCCEEDED(IShellFolder_GetDisplayNameOf(lpsf, lpi, dwFlags, &str)))
          bSuccess = StrRetToStrNW(lpFriendlyName, MAX_PATH, &str, lpi);
 else
   bSuccess = FALSE;

 TRACE("-- %s\n", debugstr_w(lpFriendlyName));
 return bSuccess;
}
