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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ _TEOF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC6(TCHAR* file_name, TCHAR* file_mode, TCHAR* file_data)
{
    BOOL result = FALSE;
    FILE *file = FUNC2(file_name, file_mode);
    if (file != NULL) {
        if (FUNC1(file_data, file) != _TEOF) {
            result = TRUE;
        } else {
            FUNC3(FUNC0("ERROR: failed to write data to file \"%s\"\n"), file_name);
            FUNC3(FUNC0("ERROR: ferror returned %d\n"), FUNC5(file));
        }
        FUNC4(file);
    } else {
        FUNC3(FUNC0("ERROR: failed to open/create file \"%s\" for output\n"), file_name);
        FUNC3(FUNC0("ERROR: ferror returned %d\n"), FUNC5(file));
    }
    return result;
}