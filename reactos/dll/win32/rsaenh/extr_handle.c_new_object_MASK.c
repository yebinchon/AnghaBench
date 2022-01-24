#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct handle_table {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  destructor; scalar_t__ refcount; int /*<<< orphan*/  dwType; } ;
typedef  TYPE_1__ OBJECTHDR ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DESTRUCTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (struct handle_table*,TYPE_1__*,int /*<<< orphan*/ *) ; 

HCRYPTKEY FUNC4(struct handle_table *lpTable, size_t cbSize, DWORD dwType, DESTRUCTOR destructor,
                        OBJECTHDR **ppObject)
{
    OBJECTHDR *pObject;
    HCRYPTKEY hObject;

    if (ppObject)
        *ppObject = NULL;

    pObject = FUNC1(FUNC0(), 0, cbSize);
    if (!pObject)
        return (HCRYPTKEY)INVALID_HANDLE_VALUE;

    pObject->dwType = dwType;
    pObject->refcount = 0;
    pObject->destructor = destructor;

    if (!FUNC3(lpTable, pObject, &hObject))
        FUNC2(FUNC0(), 0, pObject);
    else
        if (ppObject)
            *ppObject = pObject;

    return hObject;
}