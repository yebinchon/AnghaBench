
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPTSTR ;
typedef int HWND ;
typedef int BOOL ;


 int DisableVersionCtls (int ) ;
 int FALSE ;
 int * GetVersionDatum (int ) ;
 int IDD_COPYRIGHT ;
 int IDD_VERSION ;
 int SetDlgItemText (int ,int ,int *) ;
 int TRUE ;
 int szLegalCopyright ;

BOOL
FillSimpleVersion(HWND hDlg, LPTSTR lpszValue)
{
   BOOL bRet = TRUE;

   if (lpszValue != ((void*)0))
      SetDlgItemText(hDlg, IDD_VERSION, lpszValue);
   else {
      DisableVersionCtls(hDlg);
      bRet = FALSE;
   }

   lpszValue = GetVersionDatum(szLegalCopyright);

   if (lpszValue != ((void*)0))
      SetDlgItemText(hDlg, IDD_COPYRIGHT, lpszValue);

   return bRet;
}
