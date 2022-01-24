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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(void *ci, uint64_t id) {
    client *client = FUNC0(id);
    if (client == NULL) return REDISMODULE_ERR;
    if (ci == NULL) return REDISMODULE_OK;

    /* Fill the info structure if passed. */
    uint64_t structver = ((uint64_t*)ci)[0];
    return FUNC1(ci,client,structver);
}