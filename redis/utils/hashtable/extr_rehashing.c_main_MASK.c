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
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 unsigned long MAX1 ; 
 unsigned long MAX2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dictTypeTest ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(void) {
    dict *d = FUNC1(&dictTypeTest,NULL);
    unsigned long i;
    FUNC8(FUNC10(NULL));

    for (i = 0; i < MAX1; i++) {
        FUNC0(d,(void*)i,NULL);
        FUNC7(d);
    }
    FUNC6("Size: %d\n", (int)FUNC5(d));

    for (i = 0; i < MAX1; i++) {
        FUNC2(d,(void*)i);
        FUNC4(d);
        FUNC7(d);
    }
    FUNC3(d);

    d = FUNC1(&dictTypeTest,NULL);

    FUNC6("Stress testing dictGetSomeKeys\n");
    int perfect_run = 0, approx_run = 0;

    for (i = 0; i < MAX2; i++) {
        FUNC0(d,(void*)i,NULL);
        FUNC9(d,100,&perfect_run,&approx_run);
    }

    for (i = 0; i < MAX2; i++) {
        FUNC2(d,(void*)i);
        FUNC4(d);
        FUNC9(d,100,&perfect_run,&approx_run);
    }

    FUNC6("dictGetSomeKey, %d perfect runs, %d approximated runs\n",
        perfect_run, approx_run);

    FUNC3(d);

    FUNC6("TEST PASSED!\n");
    return 0;
}