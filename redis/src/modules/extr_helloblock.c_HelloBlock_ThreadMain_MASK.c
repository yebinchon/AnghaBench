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
typedef  int /*<<< orphan*/  RedisModuleBlockedClient ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long long) ; 

void *FUNC5(void *arg) {
    void **targ = arg;
    RedisModuleBlockedClient *bc = targ[0];
    long long delay = (unsigned long)targ[1];
    FUNC1(targ);

    FUNC4(delay);
    int *r = FUNC0(sizeof(int));
    *r = FUNC3();
    FUNC2(bc,r);
    return NULL;
}