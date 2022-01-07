
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {size_t uDesc; int * lpszBuf; } ;
typedef TYPE_1__* PFILETYPE ;
typedef long LPARAM ;
typedef int INT ;
typedef int HWND ;


 int EnableWindow (int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDD_CLASSLIST ;
 int IDD_COMMAND ;
 int IDD_CONFIG ;
 int IDD_DELETE ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 int LB_SETCURSEL ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int,long) ;
 int WM_SETTEXT ;
 scalar_t__ szNone ;

VOID
ValidateClass(HWND hDlg)
{
   INT i;
   PFILETYPE pFileType;




   i = (INT)SendDlgItemMessage(hDlg, IDD_CLASSLIST, LB_GETCURSEL, 0, 0L);

   if (-1 == i) {
      SendDlgItemMessage(hDlg, IDD_CLASSLIST, LB_SETCURSEL, 0, 0L);
      i=0;
   }

   EnableWindow(GetDlgItem(hDlg, IDD_CONFIG), i);
   EnableWindow(GetDlgItem(hDlg, IDD_DELETE), i);

   if (i) {

      pFileType = (PFILETYPE) SendDlgItemMessage(hDlg, IDD_CLASSLIST, LB_GETITEMDATA, i, 0L);




      SendDlgItemMessage(hDlg, IDD_COMMAND, WM_SETTEXT, 0,
         (LPARAM) &pFileType->lpszBuf[pFileType->uDesc]);

   } else {

      SendDlgItemMessage(hDlg, IDD_COMMAND, WM_SETTEXT, 0, (LPARAM)szNone);
   }
}
