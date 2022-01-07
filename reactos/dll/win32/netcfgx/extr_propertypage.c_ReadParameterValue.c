
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_5__ {scalar_t__ Type; size_t dwEnumOptions; size_t cchValueLength; int * pszValue; TYPE_1__* pEnumOptions; } ;
struct TYPE_4__ {int pszValue; } ;
typedef TYPE_2__* PPARAMETER ;
typedef size_t INT ;
typedef int HWND ;


 size_t CB_ERR ;
 size_t ComboBox_GetCurSel (int ) ;
 scalar_t__ ENUM_TYPE ;
 int Edit_GetText (int ,int *,size_t) ;
 size_t Edit_GetTextLength (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,int *) ;
 int IDC_PROPERTY_VALUE_EDIT ;
 int IDC_PROPERTY_VALUE_LIST ;
 int wcscpy (int *,int ) ;
 size_t wcslen (int ) ;

__attribute__((used)) static
VOID
ReadParameterValue(
     HWND hwnd,
     PPARAMETER pParam)
{
    INT iIndex, iLength;

    if (pParam->Type == ENUM_TYPE)
    {
        iIndex = ComboBox_GetCurSel(GetDlgItem(hwnd, IDC_PROPERTY_VALUE_LIST));
        if (iIndex != CB_ERR && iIndex < pParam->dwEnumOptions)
        {
            iLength = wcslen(pParam->pEnumOptions[iIndex].pszValue);
            if (iLength > pParam->cchValueLength)
            {
                if (pParam->pszValue != ((void*)0))
                    HeapFree(GetProcessHeap(), 0, pParam->pszValue);

                pParam->pszValue = HeapAlloc(GetProcessHeap(), 0, (iLength + 1) * sizeof(WCHAR));
            }

            if (pParam->pszValue != ((void*)0))
            {
                wcscpy(pParam->pszValue,
                       pParam->pEnumOptions[iIndex].pszValue);
                pParam->cchValueLength = iLength;
            }
        }
    }
    else
    {
        iLength = Edit_GetTextLength(GetDlgItem(hwnd, IDC_PROPERTY_VALUE_EDIT));
        if (iLength > pParam->cchValueLength)
        {
            if (pParam->pszValue != ((void*)0))
                HeapFree(GetProcessHeap(), 0, pParam->pszValue);

            pParam->pszValue = HeapAlloc(GetProcessHeap(), 0, (iLength + 1) * sizeof(WCHAR));
        }

        if (pParam->pszValue != ((void*)0))
        {
            Edit_GetText(GetDlgItem(hwnd, IDC_PROPERTY_VALUE_EDIT),
                         pParam->pszValue,
                         iLength + 1);
            pParam->cchValueLength = iLength;
        }
    }
}
