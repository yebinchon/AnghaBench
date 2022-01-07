
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int * HWND ;
typedef int BOOL ;


 scalar_t__ CHAR_COLON ;
 int COUNTOF (int *) ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GetMDIWindowText (int *,int *,int ) ;
 int * GetWindow (int *,int ) ;
 int * HasDirWindow (int *) ;
 int HasTreeWindow (int *) ;
 int MAXPATHLEN ;
 int StripFilespec (int *) ;
 int * hwndMDIClient ;
 int lstrcmpi (int *,int *) ;
 int lstrcpy (int *,scalar_t__*) ;
 int lstrlen (scalar_t__*) ;

HWND
LocateDirWindow(
    LPTSTR pszPath,
    BOOL bNoFileSpec,
    BOOL bNoTreeWindow)
{
   register HWND hwndT;
   HWND hwndDir;
   LPTSTR pT2;
   TCHAR szTemp[MAXPATHLEN];
   TCHAR szPath[MAXPATHLEN];

   pT2 = pszPath;




   if ((lstrlen(pT2) < 3) || (pT2[1] != CHAR_COLON))
   {
      return (((void*)0));
   }




   lstrcpy(szPath, pT2);

   if (!bNoFileSpec)
   {
      StripFilespec(szPath);
   }




   for (hwndT = GetWindow(hwndMDIClient, GW_CHILD);
        hwndT;
        hwndT = GetWindow(hwndT, GW_HWNDNEXT))
   {
      if (hwndDir = HasDirWindow(hwndT))
      {



         GetMDIWindowText(hwndT, szTemp, COUNTOF(szTemp));
         StripFilespec(szTemp);




         if (!lstrcmpi(szTemp, szPath) &&
            (!bNoTreeWindow || !HasTreeWindow(hwndT)))
         {
            break;
         }
      }
   }

   return (hwndT);
}
