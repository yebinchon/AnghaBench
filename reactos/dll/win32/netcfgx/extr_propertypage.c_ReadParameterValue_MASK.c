#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {scalar_t__ Type; size_t dwEnumOptions; size_t cchValueLength; int /*<<< orphan*/ * pszValue; TYPE_1__* pEnumOptions; } ;
struct TYPE_4__ {int /*<<< orphan*/  pszValue; } ;
typedef  TYPE_2__* PPARAMETER ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 size_t CB_ERR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENUM_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_PROPERTY_VALUE_EDIT ; 
 int /*<<< orphan*/  IDC_PROPERTY_VALUE_LIST ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
VOID
FUNC9(
     HWND hwnd,
     PPARAMETER pParam)
{
    INT iIndex, iLength;

    if (pParam->Type == ENUM_TYPE)
    {
        iIndex = FUNC0(FUNC3(hwnd, IDC_PROPERTY_VALUE_LIST));
        if (iIndex != CB_ERR && iIndex < pParam->dwEnumOptions)
        {
            iLength = FUNC8(pParam->pEnumOptions[iIndex].pszValue);
            if (iLength > pParam->cchValueLength)
            {
                if (pParam->pszValue != NULL)
                    FUNC6(FUNC4(), 0, pParam->pszValue);

                pParam->pszValue = FUNC5(FUNC4(), 0, (iLength + 1) * sizeof(WCHAR));
            }

            if (pParam->pszValue != NULL)
            {
                FUNC7(pParam->pszValue,
                       pParam->pEnumOptions[iIndex].pszValue);
                pParam->cchValueLength = iLength;
            }
        }
    }
    else
    {
        iLength = FUNC2(FUNC3(hwnd, IDC_PROPERTY_VALUE_EDIT));
        if (iLength > pParam->cchValueLength)
        {
            if (pParam->pszValue != NULL)
                FUNC6(FUNC4(), 0, pParam->pszValue);

            pParam->pszValue = FUNC5(FUNC4(), 0, (iLength + 1) * sizeof(WCHAR));
        }

        if (pParam->pszValue != NULL)
        {
            FUNC1(FUNC3(hwnd, IDC_PROPERTY_VALUE_EDIT),
                         pParam->pszValue,
                         iLength + 1);
            pParam->cchValueLength = iLength;
        }
    }
}