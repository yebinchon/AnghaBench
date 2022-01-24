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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  jsbytecode ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t OFFSET_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static BOOL
FUNC3(jsbytecode *jump, jsbytecode *target)
{
    ptrdiff_t offset = target - jump;

    /* Check that target really points forward. */
    FUNC2(offset >= 2);
    if ((size_t)offset > OFFSET_MAX)
        return FALSE;

    jump[0] = FUNC0(offset);
    jump[1] = FUNC1(offset);
    return TRUE;
}