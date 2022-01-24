#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct handle_table {int /*<<< orphan*/  mutex; TYPE_1__* paEntries; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pObject; } ;
typedef  int /*<<< orphan*/  OBJECTHDR ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct handle_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct handle_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC5(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType, OBJECTHDR **lplpObject)
{
    BOOL ret = FALSE;

    FUNC3("(lpTable=%p, handle=%ld, lplpObject=%p)\n", lpTable, handle, lplpObject);
    
    FUNC0(&lpTable->mutex);
    if (!FUNC4(lpTable, handle, dwType)) 
    {
        *lplpObject = NULL;
        goto exit;
    }
    *lplpObject = lpTable->paEntries[FUNC1(handle)].pObject;

    ret = TRUE;
exit:
    FUNC2(&lpTable->mutex);
    return ret;
}