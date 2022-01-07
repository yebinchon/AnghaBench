
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDD_VERSION_FRAME ;
 int IDD_VERSION_KEY ;
 int IDD_VERSION_VALUE ;

VOID
DisableVersionCtls(HWND hDlg)
{
   EnableWindow(GetDlgItem(hDlg, IDD_VERSION_FRAME), FALSE);
   EnableWindow(GetDlgItem(hDlg, IDD_VERSION_KEY), FALSE);
   EnableWindow(GetDlgItem(hDlg, IDD_VERSION_VALUE), FALSE);
}
