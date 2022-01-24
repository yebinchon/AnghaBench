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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC4(MSIPACKAGE *package, LPCWSTR dir,
 LPWSTR *appValue)
{
    DWORD attr = FUNC0(dir);

    if (attr != INVALID_FILE_ATTRIBUTES && (attr & FILE_ATTRIBUTE_DIRECTORY))
    {
        FUNC1("directory exists, returning %s\n", FUNC2(dir));
        *appValue = FUNC3(dir);
    }

    return ERROR_SUCCESS;
}