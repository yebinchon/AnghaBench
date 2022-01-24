#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  msi_dialog ;
typedef  int /*<<< orphan*/  msi_control ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int LVS_AUTOARRANGE ; 
 int LVS_REPORT ; 
 int LVS_SHAREIMAGELISTS ; 
 int LVS_SINGLESEL ; 
 int /*<<< orphan*/  WC_LISTVIEWW ; 
 int WS_BORDER ; 
 int WS_CHILD ; 
 int WS_GROUP ; 
 int WS_HSCROLL ; 
 int WS_TABSTOP ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC3( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    DWORD style;

    style = LVS_REPORT | WS_VSCROLL | WS_HSCROLL | LVS_SHAREIMAGELISTS |
            LVS_AUTOARRANGE | LVS_SINGLESEL | WS_BORDER |
            WS_CHILD | WS_TABSTOP | WS_GROUP;
    control = FUNC0( dialog, rec, WC_LISTVIEWW, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    FUNC1( dialog, control, rec );
    FUNC2( dialog, control );

    return ERROR_SUCCESS;
}