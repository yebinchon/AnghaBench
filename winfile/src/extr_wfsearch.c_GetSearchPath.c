
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int VOID ;
typedef scalar_t__* LPWSTR ;
typedef int HWND ;


 scalar_t__ CHAR_COLON ;
 int COUNTOF (scalar_t__*) ;
 int GetWindowText (int ,scalar_t__*,int ) ;
 int MAXPATHLEN ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;

VOID
GetSearchPath(HWND hWnd, LPWSTR pszPath)
{
   LPWSTR p;

   WCHAR szTemp[MAXPATHLEN+32];


   GetWindowText(hWnd, szTemp, COUNTOF(szTemp));



   p = szTemp;
   while (*p && *p != CHAR_COLON)
      ++p;

   p += 2;

   lstrcpy(pszPath, p);
}
