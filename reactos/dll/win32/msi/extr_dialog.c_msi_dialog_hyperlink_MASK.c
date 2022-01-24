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
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_4__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  handler; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int mask; scalar_t__* szUrl; void* stateMask; void* state; scalar_t__ iLink; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ LITEM ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int LIF_ITEMINDEX ; 
 int LIF_STATE ; 
 int LIF_URL ; 
 void* LIS_ENABLED ; 
 int /*<<< orphan*/  LM_SETITEM ; 
 int L_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_LINK ; 
 int WS_CHILD ; 
 int WS_GROUP ; 
 int WS_TABSTOP ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msi_dialog_hyperlink_handler ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UINT FUNC6( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    DWORD style = WS_CHILD | WS_TABSTOP | WS_GROUP;
    const WCHAR *text = FUNC1( rec, 10 );
    int len = FUNC5( text );
    LITEM item;

    control = FUNC3( dialog, rec, WC_LINK, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    control->attributes = FUNC0( rec, 8 );
    control->handler    = msi_dialog_hyperlink_handler;

    item.mask      = LIF_ITEMINDEX | LIF_STATE | LIF_URL;
    item.iLink     = 0;
    item.state     = LIS_ENABLED;
    item.stateMask = LIS_ENABLED;
    if (len < L_MAX_URL_LENGTH) FUNC4( item.szUrl, text );
    else item.szUrl[0] = 0;

    FUNC2( control->hwnd, LM_SETITEM, 0, (LPARAM)&item );

    return ERROR_SUCCESS;
}