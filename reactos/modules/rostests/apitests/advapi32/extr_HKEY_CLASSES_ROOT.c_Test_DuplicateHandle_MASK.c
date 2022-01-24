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
typedef  int /*<<< orphan*/  PHANDLE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC7(void)
{
    HKEY KeyHandle, DupHandle;
    DWORD ErrorCode;
    BOOL Duplicated;

    ErrorCode = FUNC4(HKEY_CLASSES_ROOT, L"CLSID", 0, KEY_READ, &KeyHandle);
    FUNC6(ErrorCode, ERROR_SUCCESS);
    FUNC5(FUNC2(KeyHandle), "\n");

    Duplicated = FUNC0(FUNC1(), KeyHandle, FUNC1(), (PHANDLE)&DupHandle, 0, 0, DUPLICATE_SAME_ACCESS);
    FUNC5(Duplicated, "\n");
    FUNC5(DupHandle != NULL, "\n");
    FUNC5(!FUNC2(DupHandle), "\n");

    FUNC3(KeyHandle);
    FUNC3(DupHandle);
}