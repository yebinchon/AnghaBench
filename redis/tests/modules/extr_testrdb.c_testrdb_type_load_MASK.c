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
typedef  void RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 float FUNC1 (int /*<<< orphan*/ *) ; 
 long double FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void *FUNC6(RedisModuleIO *rdb, int encver) {
    int count = FUNC3(rdb);
    RedisModuleString *str = FUNC4(rdb);
    float f = FUNC1(rdb);
    long double ld = FUNC2(rdb);
    if (FUNC0(rdb))
        return NULL;
    /* Using the values only after checking for io errors. */
    FUNC5(count==1);
    FUNC5(encver==1);
    FUNC5(f==1.5f);
    FUNC5(ld==0.333333333333333333L);
    return str;
}