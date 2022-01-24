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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ; 
 scalar_t__ ERROR_INSTALL_ALREADY_RUNNING ; 
 scalar_t__ ERROR_INSTALL_FAILURE ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_INSTALL_SUSPEND ; 
 scalar_t__ ERROR_INSTALL_USEREXIT ; 
 scalar_t__ ERROR_INVALID_DATA ; 
 scalar_t__ ERROR_INVALID_HANDLE_STATE ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int IDCANCEL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC5(MSIPACKAGE *package, LPCWSTR action, UINT script)
{
    UINT arc;
    INT uirc;

    uirc = FUNC4(package, action, NULL, NULL);
    if (uirc == IDCANCEL)
        return ERROR_INSTALL_USEREXIT;
    FUNC3(package, action, TRUE, 0);
    arc = FUNC0( package, action, script );
    uirc = !arc;

    if (arc == ERROR_FUNCTION_NOT_CALLED && FUNC2(package))
    {
        uirc = FUNC1(package, action);
        switch (uirc)
        {
        case -1:
            return ERROR_SUCCESS; /* stop immediately */
        case 0: arc = ERROR_FUNCTION_NOT_CALLED; break;
        case 1: arc = ERROR_SUCCESS; break;
        case 2: arc = ERROR_INSTALL_USEREXIT; break;
        case 3: arc = ERROR_INSTALL_FAILURE; break;
        case 4: arc = ERROR_INSTALL_SUSPEND; break;
        case 5: arc = ERROR_MORE_DATA; break;
        case 6: arc = ERROR_INVALID_HANDLE_STATE; break;
        case 7: arc = ERROR_INVALID_DATA; break;
        case 8: arc = ERROR_INSTALL_ALREADY_RUNNING; break;
        case 9: arc = ERROR_INSTALL_PACKAGE_REJECTED; break;
        default: arc = ERROR_FUNCTION_FAILED; break;
        }
    }

    FUNC3(package, action, FALSE, uirc);

    return arc;
}