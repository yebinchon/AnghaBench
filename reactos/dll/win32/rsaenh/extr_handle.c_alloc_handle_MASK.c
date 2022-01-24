#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct handle_table {size_t iFirstFree; size_t iEntries; int /*<<< orphan*/  mutex; TYPE_1__* paEntries; } ;
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_5__ {size_t iNextFree; TYPE_2__* pObject; } ;
typedef  TYPE_2__ OBJECTHDR ;
typedef  scalar_t__ HCRYPTKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct handle_table*,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct handle_table*) ; 

__attribute__((used)) static BOOL FUNC6(struct handle_table *lpTable, OBJECTHDR *lpObject, HCRYPTKEY *lpHandle)
{
    BOOL ret = FALSE;

    FUNC4("(lpTable=%p, lpObject=%p, lpHandle=%p)\n", lpTable, lpObject, lpHandle);
        
    FUNC0(&lpTable->mutex);
    if (lpTable->iFirstFree >= lpTable->iEntries) 
        if (!FUNC5(lpTable))
        {
            *lpHandle = (HCRYPTKEY)INVALID_HANDLE_VALUE;
            goto exit;
        }

    *lpHandle = FUNC1(lpTable->iFirstFree);
    
    lpTable->paEntries[lpTable->iFirstFree].pObject = lpObject;
    lpTable->iFirstFree = lpTable->paEntries[lpTable->iFirstFree].iNextFree;
    FUNC2(&lpObject->refcount);

    ret = TRUE;
exit:
    FUNC3(&lpTable->mutex);
    return ret;
}