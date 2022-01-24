#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ arg; int /*<<< orphan*/  skip; } ;
typedef  TYPE_1__ exarg_T ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(exarg_T *eap)
{
    int state;
    char *script = NULL;

    script = (char *)FUNC3(eap, eap->arg);
    if (!eap->skip && FUNC0())
    {
	if (script == NULL)
	    FUNC2((char *)eap->arg, &state);
	else
	    FUNC2(script, &state);
	if (state)
	    FUNC1(state);
    }
    FUNC4(script);
}