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
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(RedisModuleIO *rdb, void *value) {
    RedisModuleString *str = (RedisModuleString*)value;
    FUNC2(rdb, 1);
    FUNC3(rdb, str);
    FUNC0(rdb, 1.5);
    FUNC1(rdb, 0.333333333333333333L);
}