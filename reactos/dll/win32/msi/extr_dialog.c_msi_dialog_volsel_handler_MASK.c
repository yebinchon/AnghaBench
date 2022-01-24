#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  package; } ;
typedef  TYPE_1__ msi_dialog ;
struct TYPE_7__ {int attributes; int /*<<< orphan*/  property; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ msi_control ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ CBN_SELCHANGE ; 
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int msidbControlAttributesIndirect ; 

__attribute__((used)) static UINT FUNC6( msi_dialog *dialog,
                                       msi_control *control, WPARAM param )
{
    WCHAR text[MAX_PATH];
    LPWSTR prop;
    BOOL indirect;
    int index;

    if (FUNC1(param) != CBN_SELCHANGE)
        return ERROR_SUCCESS;

    index = FUNC2( control->hwnd, CB_GETCURSEL, 0, 0 );
    if ( index == CB_ERR )
    {
        FUNC0("No ComboBox item selected!\n");
        return ERROR_FUNCTION_FAILED;
    }

    FUNC2( control->hwnd, CB_GETLBTEXT, index, (LPARAM)text );

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = FUNC3( dialog, control->property, indirect );

    FUNC4( dialog->package, prop, text );

    FUNC5( prop );
    return ERROR_SUCCESS;
}