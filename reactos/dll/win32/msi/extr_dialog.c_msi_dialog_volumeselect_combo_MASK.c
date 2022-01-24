#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_4__ {int /*<<< orphan*/  property; int /*<<< orphan*/  handler; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int CBS_DROPDOWNLIST ; 
 int CBS_HASSTRINGS ; 
 int CBS_SORT ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WC_COMBOBOXW ; 
 int WS_CHILD ; 
 int WS_EX_LEFT ; 
 int WS_EX_LTRREADING ; 
 int WS_EX_RIGHTSCROLLBAR ; 
 int WS_GROUP ; 
 int WS_TABSTOP ; 
 int WS_VISIBLE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_dialog_volsel_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC5( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    LPCWSTR prop;
    DWORD style;

    /* FIXME: CBS_OWNERDRAWFIXED */
    style = WS_CHILD | WS_VISIBLE | WS_GROUP | WS_TABSTOP |
            CBS_DROPDOWNLIST | CBS_SORT | CBS_HASSTRINGS |
            WS_EX_LEFT | WS_EX_LTRREADING | WS_EX_RIGHTSCROLLBAR;
    control = FUNC2( dialog, rec, WC_COMBOBOXW, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    control->attributes = FUNC0( rec, 8 );
    control->handler = msi_dialog_volsel_handler;
    prop = FUNC1( rec, 9 );
    control->property = FUNC3( dialog, prop, FALSE );

    FUNC4( dialog, control );

    return ERROR_SUCCESS;
}