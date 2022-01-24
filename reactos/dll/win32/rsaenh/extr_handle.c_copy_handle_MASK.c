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
struct handle_table {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  OBJECTHDR ;
typedef  scalar_t__ HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct handle_table*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct handle_table*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct handle_table*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

BOOL FUNC5(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType, HCRYPTKEY *copy)
{
    OBJECTHDR *pObject;
    BOOL ret;

    FUNC2("(lpTable=%p, handle=%ld, copy=%p)\n", lpTable, handle, copy);

    FUNC0(&lpTable->mutex);
    if (!FUNC4(lpTable, handle, dwType, &pObject)) 
    {
        *copy = (HCRYPTKEY)INVALID_HANDLE_VALUE;
        FUNC1(&lpTable->mutex);
        return FALSE;
    }

    ret = FUNC3(lpTable, pObject, copy);
    FUNC1(&lpTable->mutex);
    return ret;
}