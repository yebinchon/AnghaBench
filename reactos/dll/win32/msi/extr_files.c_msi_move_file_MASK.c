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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int msidbMoveFileOptionsMove ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR source, LPCWSTR dest, int options)
{
    BOOL ret;

    if (FUNC1(source) == FILE_ATTRIBUTE_DIRECTORY ||
        FUNC1(dest) == FILE_ATTRIBUTE_DIRECTORY)
    {
        FUNC5("Source or dest is directory, not moving\n");
        return FALSE;
    }

    if (options == msidbMoveFileOptionsMove)
    {
        FUNC4("moving %s -> %s\n", FUNC6(source), FUNC6(dest));
        ret = FUNC3(source, dest, MOVEFILE_REPLACE_EXISTING);
        if (!ret)
        {
            FUNC5("MoveFile failed: %d\n", FUNC2());
            return FALSE;
        }
    }
    else
    {
        FUNC4("copying %s -> %s\n", FUNC6(source), FUNC6(dest));
        ret = FUNC0(source, dest, FALSE);
        if (!ret)
        {
            FUNC5("CopyFile failed: %d\n", FUNC2());
            return FALSE;
        }
    }

    return TRUE;
}