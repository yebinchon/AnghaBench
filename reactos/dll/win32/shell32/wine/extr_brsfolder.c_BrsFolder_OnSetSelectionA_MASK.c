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
typedef  int /*<<< orphan*/  browse_info ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC5(browse_info *info, LPVOID selection, BOOL is_str) {
    LPWSTR selectionW = NULL;
    BOOL result = FALSE;
    int length;
    
    if (!is_str)
        return FUNC0(info, selection, is_str);

    if ((length = FUNC4(CP_ACP, 0, selection, -1, NULL, 0)) &&
        (selectionW = FUNC2(FUNC1(), 0, length * sizeof(WCHAR))) &&
        FUNC4(CP_ACP, 0, selection, -1, selectionW, length))
    {
        result = FUNC0(info, selectionW, is_str);
    }

    FUNC3(FUNC1(), 0, selectionW);
    return result;
}