
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {scalar_t__ lParam; } ;
struct TYPE_5__ {size_t dwCount; scalar_t__ pCurrentParam; TYPE_1__* Array; } ;
struct TYPE_4__ {int * pszName; int * pszDescription; } ;
typedef int * PWSTR ;
typedef TYPE_2__* PPARAMETER_ARRAY ;
typedef scalar_t__ PPARAMETER ;
typedef TYPE_3__* LPPROPSHEETPAGEW ;
typedef scalar_t__ LPARAM ;
typedef int LONG_PTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef size_t DWORD ;
typedef int BOOL ;


 int DWLP_USER ;
 int DisplayParameter (scalar_t__,scalar_t__) ;
 int ERR (char*) ;
 int FALSE ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_PROPERTY_NAME ;
 scalar_t__ LB_ERR ;
 scalar_t__ ListBox_AddString (scalar_t__,int *) ;
 scalar_t__ ListBox_GetItemData (scalar_t__,int ) ;
 int ListBox_SetCurSel (scalar_t__,int ) ;
 int ListBox_SetItemData (scalar_t__,scalar_t__,scalar_t__) ;
 int SetWindowLongPtr (scalar_t__,int ,int ) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static
BOOL
OnInitDialog(
    HWND hwnd,
    WPARAM wParam,
    LPARAM lParam)
{
    PPARAMETER_ARRAY pParamArray;
    HWND hwndControl;
    PWSTR pszText;
    DWORD i;
    INT idx;

    TRACE("OnInitDialog()\n");

    pParamArray = (PPARAMETER_ARRAY)((LPPROPSHEETPAGEW)lParam)->lParam;
    if (pParamArray == ((void*)0))
    {
        ERR("pParamArray is NULL\n");
        return FALSE;
    }

    SetWindowLongPtr(hwnd, DWLP_USER, (LONG_PTR)pParamArray);

    hwndControl = GetDlgItem(hwnd, IDC_PROPERTY_NAME);
    if (hwndControl)
    {
        for (i = 0; i < pParamArray->dwCount; i++)
        {
            if (pParamArray->Array[i].pszDescription != ((void*)0))
                pszText = pParamArray->Array[i].pszDescription;
            else
                pszText = pParamArray->Array[i].pszName;

            idx = ListBox_AddString(hwndControl, pszText);
            if (idx != LB_ERR)
                ListBox_SetItemData(hwndControl, idx, (LPARAM)&pParamArray->Array[i]);
        }

        if (pParamArray->dwCount > 0)
        {
            ListBox_SetCurSel(hwndControl, 0);
            pParamArray->pCurrentParam = (PPARAMETER)ListBox_GetItemData(hwndControl, 0);
            DisplayParameter(hwnd, pParamArray->pCurrentParam);
        }
    }

    return TRUE;
}
