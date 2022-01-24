#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* errstr; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(const redisAsyncContext *c, int status) {
    if (status != REDIS_OK) {
        FUNC1("Error: %s\n", c->errstr);
        FUNC0(loop);
        return;
    }

    FUNC1("Connected...\n");
}