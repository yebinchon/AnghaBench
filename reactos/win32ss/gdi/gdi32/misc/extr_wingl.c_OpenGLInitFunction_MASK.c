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
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  int /*<<< orphan*/  FARPROC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hOpenGL ; 

__attribute__((used)) static BOOL FUNC2(PCSTR name,
                               FARPROC *funcptr)
{
    PVOID func;

    func = (PVOID)FUNC0(hOpenGL, name);
    if (func != NULL)
    {
        (void)FUNC1((PVOID*)funcptr,
                                                func,
                                                NULL);
        return TRUE;
    }

    return FALSE;
}