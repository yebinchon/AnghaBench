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
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  sortPointers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC6 (int) ; 

void FUNC7(dict *d, int times, int *perfect_run, int *approx_run) {
    int j;

    dictEntry **des = FUNC6(sizeof(dictEntry*)*FUNC1(d));
    for (j = 0; j < times; j++) {
        int requested = FUNC4() % (FUNC1(d)+1);
        int returned = FUNC0(d, des, requested);
        int dup = 0;

        FUNC3(des,returned,sizeof(dictEntry*),sortPointers);
        if (returned > 1) {
            int i;
            for (i = 0; i < returned-1; i++) {
                if (des[i] == des[i+1]) dup++;
            }
        }

        if (requested == returned && dup == 0) {
            (*perfect_run)++;
        } else {
            (*approx_run)++;
            FUNC2("Requested, returned, duplicated: %d %d %d\n",
                requested, returned, dup);
        }
    }
    FUNC5(des);
}