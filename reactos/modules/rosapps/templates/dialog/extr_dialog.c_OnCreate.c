
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int member_0; int member_1; } ;
struct TYPE_6__ {int * pszText; void* mask; } ;
typedef TYPE_1__ TCITEM ;
typedef int TCHAR ;
typedef int LONG ;
typedef TYPE_2__ INITCOMMONCONTROLSEX ;
typedef int HWND ;
typedef int DLGPROC ;
typedef int BOOL ;


 void* CreateDialog (int ,int ,int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int ICC_TAB_CLASSES ;
 int IDC_TAB ;
 int IDD_PAGE1 ;
 int IDD_PAGE2 ;
 int IDD_PAGE3 ;
 int InitCommonControls () ;
 int InitCommonControlsEx (TYPE_2__*) ;
 int MAKEINTRESOURCE (int ) ;
 scalar_t__ PageWndProc1 ;
 scalar_t__ PageWndProc2 ;
 scalar_t__ PageWndProc3 ;
 int SW_SHOW ;
 int ShowWindow (void*,int ) ;
 void* TCIF_TEXT ;
 int TRUE ;
 int TabCtrl_InsertItem (int ,int,TYPE_1__*) ;
 int _T (char*) ;
 int _tcscpy (int *,int ) ;
 int hInst ;
 void* hPage1 ;
 void* hPage2 ;
 void* hPage3 ;
 int hTabWnd ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL OnCreate(HWND hWnd, LONG lData)
{
    TCHAR szTemp[256];
    TCITEM item;



    InitCommonControls();






    hTabWnd = GetDlgItem(hWnd, IDC_TAB);
    hPage1 = CreateDialog(hInst, MAKEINTRESOURCE(IDD_PAGE1), hWnd, (DLGPROC)PageWndProc1);
    hPage2 = CreateDialog(hInst, MAKEINTRESOURCE(IDD_PAGE2), hWnd, (DLGPROC)PageWndProc2);
    hPage3 = CreateDialog(hInst, MAKEINTRESOURCE(IDD_PAGE3), hWnd, (DLGPROC)PageWndProc3);


    _tcscpy(szTemp, _T("Page One"));
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    TabCtrl_InsertItem(hTabWnd, 0, &item);
    _tcscpy(szTemp, _T("Page Two"));
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    TabCtrl_InsertItem(hTabWnd, 1, &item);
    _tcscpy(szTemp, _T("Page Three"));
    memset(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    TabCtrl_InsertItem(hTabWnd, 2, &item);

    ShowWindow(hPage1, SW_SHOW);

    return TRUE;
}
