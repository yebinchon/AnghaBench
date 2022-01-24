#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int mode; int /*<<< orphan*/  ctx; int /*<<< orphan*/  key; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ RedisModuleKey ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_AM_KEY ; 
 int REDISMODULE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(RedisModuleKey *key) {
    if (key == NULL) return;
    int signal = FUNC1(key->ctx);
    if ((key->mode & REDISMODULE_WRITE) && signal)
        FUNC4(key->db,key->key);
    /* TODO: if (key->iter) RM_KeyIteratorStop(kp); */
    FUNC0(key);
    FUNC3(key->key);
    FUNC2(key->ctx,REDISMODULE_AM_KEY,key);
    FUNC5(key);
}