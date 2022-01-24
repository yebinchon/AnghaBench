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
typedef  int /*<<< orphan*/  runner ;
typedef  int /*<<< orphan*/  rangeinitializer ;
struct TYPE_4__ {scalar_t__ arg; int /*<<< orphan*/  skip; } ;
typedef  TYPE_1__ exarg_T ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ init_range_cmd ; 
 scalar_t__ run_cmd ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(exarg_T *eap)
{
    char_u *script;

    script = FUNC1(eap, eap->arg);
    if (!eap->skip)
    {
	FUNC0(script == NULL ? (char *) eap->arg : (char *) script,
		(rangeinitializer) init_range_cmd,
		(runner) run_cmd,
		(void *) eap);
    }
    FUNC2(script);
}