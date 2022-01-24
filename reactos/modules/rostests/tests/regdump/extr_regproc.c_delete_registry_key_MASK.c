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
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(TCHAR* reg_key_name)
{
    TCHAR* branch_name;
    DWORD branch_name_len;
    HKEY reg_key_class;
    HKEY branch_key;

    if (!reg_key_name || !reg_key_name[0]) {
        return;
    }
    /* open the specified key */
    reg_key_class = FUNC9(reg_key_name);
    if (reg_key_class == (HKEY)ERROR_INVALID_PARAMETER) {
        FUNC7(FUNC5("Incorrect registry class specification in '%s'\n"), reg_key_name);
        //exit(1);
        return;
    }
    branch_name = FUNC10(reg_key_name);
    FUNC0(branch_name);
    branch_name_len = FUNC6(branch_name);
    if (!branch_name[0]) {
        FUNC7(FUNC5("Can't delete registry class '%s'\n"), reg_key_name);
        //exit(1);
        return;
    }
    if (FUNC4(reg_key_class, branch_name, &branch_key) == ERROR_SUCCESS) {
        /* check whether the key exists */
        FUNC3(branch_key);
        FUNC8(reg_key_class, &branch_name, &branch_name_len);
    }
    FUNC2(FUNC1(), 0, branch_name);
}