#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
typedef  TYPE_1__* PDEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

PDEVMODEW
FUNC3(PDEVMODEW pInput)
{
    PDEVMODEW pOutput;

    // Allocate a buffer for this DevMode.
    pOutput = FUNC1(pInput->dmSize + pInput->dmDriverExtra);
    if (!pOutput)
    {
        FUNC2("DllAllocSplMem failed!\n");
        return NULL;
    }

    // Copy it.
    FUNC0(pOutput, pInput, pInput->dmSize + pInput->dmDriverExtra);

    return pOutput;
}