#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ loading; } ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_EVENT_LOADING ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_LOADING_ENDED ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_LOADING_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rdbFileBeingLoaded ; 
 TYPE_1__ server ; 

void FUNC1(int success) {
    server.loading = 0;
    rdbFileBeingLoaded = NULL;

    /* Fire the loading modules end event. */
    FUNC0(REDISMODULE_EVENT_LOADING,
                          success?
                            REDISMODULE_SUBEVENT_LOADING_ENDED:
                            REDISMODULE_SUBEVENT_LOADING_FAILED,
                          NULL);
}