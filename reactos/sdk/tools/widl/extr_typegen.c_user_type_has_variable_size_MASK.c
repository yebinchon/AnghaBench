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
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 int FALSE ; 
#define  FC_CPSTRUCT 131 
#define  FC_CSTRUCT 130 
#define  FC_CVSTRUCT 129 
#define  FC_PSTRUCT 128 
 int TRUE ; 
 scalar_t__ TYPE_STRUCT ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(const type_t *t)
{
    if (FUNC1(t))
        return TRUE;
    else if (FUNC2(t) == TYPE_STRUCT)
    {
        switch (FUNC0(t))
        {
        case FC_PSTRUCT:
        case FC_CSTRUCT:
        case FC_CPSTRUCT:
        case FC_CVSTRUCT:
            return TRUE;
        }
    }
    /* Note: Since this only applies to user types, we can't have a conformant
       array here, and strings should get filed under pointer in this case.  */
    return FALSE;
}