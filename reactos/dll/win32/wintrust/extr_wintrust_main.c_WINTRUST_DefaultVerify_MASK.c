#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wintrust_step {int dummy; } ;
struct TYPE_11__ {TYPE_3__* hWVTStateData; } ;
typedef  TYPE_2__ WINTRUST_DATA ;
struct TYPE_10__ {TYPE_3__* pPDSip; } ;
struct TYPE_12__ {struct TYPE_12__* psPfns; TYPE_1__ u; struct TYPE_12__* padwTrustStepErrors; int /*<<< orphan*/  dwRegPolicySettings; int /*<<< orphan*/ * pgActionID; scalar_t__ hWndParent; TYPE_2__* pWintrustData; } ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ CRYPT_PROVIDER_DATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wintrust_step*,TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct wintrust_step*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LONG FUNC10(HWND hwnd, GUID *actionID,
 WINTRUST_DATA *data)
{
    DWORD err = ERROR_SUCCESS, numSteps = 0;
    CRYPT_PROVIDER_DATA *provData;
    BOOL ret;
    struct wintrust_step verifySteps[5];

    FUNC2("(%p, %s, %p)\n", hwnd, FUNC9(actionID), data);

    provData = FUNC4();
    if (!provData)
        return ERROR_OUTOFMEMORY;

    ret = FUNC8(actionID, provData->psPfns);
    if (!ret)
    {
        err = FUNC1();
        goto error;
    }

    data->hWVTStateData = provData;
    provData->pWintrustData = data;
    if (hwnd == INVALID_HANDLE_VALUE)
        provData->hWndParent = FUNC0();
    else
        provData->hWndParent = hwnd;
    provData->pgActionID = actionID;
    FUNC7(&provData->dwRegPolicySettings);

    numSteps = FUNC3(verifySteps,
     provData->psPfns);
    err = FUNC5(verifySteps, numSteps, provData);
    goto done;

error:
    if (provData)
    {
        FUNC6(provData->padwTrustStepErrors);
        FUNC6(provData->u.pPDSip);
        FUNC6(provData->psPfns);
        FUNC6(provData);
    }
done:
    FUNC2("returning %08x\n", err);
    return err;
}