#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {scalar_t__ lParam; } ;
struct TYPE_5__ {size_t dwCount; scalar_t__ pCurrentParam; TYPE_1__* Array; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pszName; int /*<<< orphan*/ * pszDescription; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_2__* PPARAMETER_ARRAY ;
typedef  scalar_t__ PPARAMETER ;
typedef  TYPE_3__* LPPROPSHEETPAGEW ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PROPERTY_NAME ; 
 scalar_t__ LB_ERR ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOL
FUNC9(
    HWND hwnd,
    WPARAM wParam,
    LPARAM lParam)
{
    PPARAMETER_ARRAY pParamArray;
    HWND hwndControl;
    PWSTR pszText;
    DWORD i;
    INT idx;

    FUNC8("OnInitDialog()\n");

    pParamArray = (PPARAMETER_ARRAY)((LPPROPSHEETPAGEW)lParam)->lParam;
    if (pParamArray == NULL)
    {
        FUNC1("pParamArray is NULL\n");
        return FALSE;
    }

    FUNC7(hwnd, DWLP_USER, (LONG_PTR)pParamArray);

    hwndControl = FUNC2(hwnd, IDC_PROPERTY_NAME);
    if (hwndControl)
    {
        for (i = 0; i < pParamArray->dwCount; i++)
        {
            if (pParamArray->Array[i].pszDescription != NULL)
                pszText = pParamArray->Array[i].pszDescription;
            else
                pszText = pParamArray->Array[i].pszName;

            idx = FUNC3(hwndControl, pszText);
            if (idx != LB_ERR)
                FUNC6(hwndControl, idx, (LPARAM)&pParamArray->Array[i]);
        }

        if (pParamArray->dwCount > 0)
        {
            FUNC5(hwndControl, 0);
            pParamArray->pCurrentParam = (PPARAMETER)FUNC4(hwndControl, 0);
            FUNC0(hwnd, pParamArray->pCurrentParam);
        }
    }

    return TRUE;
}