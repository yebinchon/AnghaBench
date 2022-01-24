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
typedef  char TCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,long,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC7 (char*) ; 

BOOL FUNC8(HKEY key, TCHAR** reg_key_name_buf, DWORD* reg_key_name_len)
{
    HKEY branch_key;
    DWORD max_sub_key_len;
    DWORD subkeys;
    DWORD curr_len;
    LONG ret;
    long int i;

    if (FUNC5(key, *reg_key_name_buf, &branch_key) != ERROR_SUCCESS) {
        FUNC0();
        return FALSE;
    }

    /* get size information and resize the buffers if necessary */
    if (FUNC6(branch_key, NULL, NULL, NULL, &subkeys, &max_sub_key_len,
                        NULL, NULL, NULL, NULL, NULL, NULL) != ERROR_SUCCESS) {
        FUNC0();
        FUNC2(branch_key);
        return FALSE;
    }
    curr_len = FUNC7(*reg_key_name_buf);
    FUNC1(reg_key_name_buf, reg_key_name_len, max_sub_key_len + curr_len + 1);

    (*reg_key_name_buf)[curr_len] = '\\';
    for (i = subkeys - 1; i >= 0; i--) {
        DWORD buf_len = *reg_key_name_len - curr_len;
        ret = FUNC4(branch_key, i, *reg_key_name_buf + curr_len + 1, &buf_len, NULL, NULL, NULL, NULL);
        if (ret != ERROR_SUCCESS && ret != ERROR_MORE_DATA && ret != ERROR_NO_MORE_ITEMS) {
            FUNC0();
            FUNC2(branch_key);
            return FALSE;
        } else {
            FUNC8(key, reg_key_name_buf, reg_key_name_len);
        }
    }
    (*reg_key_name_buf)[curr_len] = '\0';
    FUNC2(branch_key);
    FUNC3(key, *reg_key_name_buf);
    return TRUE;
}