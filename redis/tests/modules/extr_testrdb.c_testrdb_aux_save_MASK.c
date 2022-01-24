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
typedef  int /*<<< orphan*/  RedisModuleIO ;

/* Variables and functions */
 int REDISMODULE_AUX_AFTER_RDB ; 
 int REDISMODULE_AUX_BEFORE_RDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ after_str ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ before_str ; 
 int conf_aux_count ; 

void FUNC3(RedisModuleIO *rdb, int when) {
    if (conf_aux_count==1) FUNC2(when == REDISMODULE_AUX_AFTER_RDB);
    if (conf_aux_count==0) FUNC2(0);
    if (when == REDISMODULE_AUX_BEFORE_RDB) {
        if (before_str) {
            FUNC0(rdb, 1);
            FUNC1(rdb, before_str);
        } else {
            FUNC0(rdb, 0);
        }
    } else {
        if (after_str) {
            FUNC0(rdb, 1);
            FUNC1(rdb, after_str);
        } else {
            FUNC0(rdb, 0);
        }
    }
}