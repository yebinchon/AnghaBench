#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int cArgs; unsigned int cNamedArgs; scalar_t__ rgvarg; int /*<<< orphan*/ * rgdispidNamedArgs; } ;
typedef  TYPE_1__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(const DISPPARAMS * pdp)
{
    unsigned int index;

    FUNC0("args=%u named args=%u\n", pdp->cArgs, pdp->cNamedArgs);

    if (pdp->cNamedArgs && pdp->rgdispidNamedArgs)
    {
        FUNC0("named args:\n");
        for (index = 0; index < pdp->cNamedArgs; index++)
            FUNC0( "\t0x%x\n", pdp->rgdispidNamedArgs[index] );
    }

    if (pdp->cArgs && pdp->rgvarg)
    {
        FUNC0("args:\n");
        for (index = 0; index < pdp->cArgs; index++)
            FUNC0("  [%d] %s\n", index, FUNC1(pdp->rgvarg+index));
    }
}