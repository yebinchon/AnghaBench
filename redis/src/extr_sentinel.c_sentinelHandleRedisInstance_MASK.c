#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int flags; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
struct TYPE_11__ {scalar_t__ tilt_start_time; scalar_t__ tilt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SENTINEL_ASK_FORCED ; 
 int /*<<< orphan*/  SENTINEL_NO_FLAGS ; 
 scalar_t__ SENTINEL_TILT_PERIOD ; 
 int SRI_MASTER ; 
 int SRI_SLAVE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_10__ sentinel ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

void FUNC9(sentinelRedisInstance *ri) {
    /* ========== MONITORING HALF ============ */
    /* Every kind of instance */
    FUNC6(ri);
    FUNC7(ri);

    /* ============== ACTING HALF ============= */
    /* We don't proceed with the acting half if we are in TILT mode.
     * TILT happens when we find something odd with the time, like a
     * sudden change in the clock. */
    if (sentinel.tilt) {
        if (FUNC0()-sentinel.tilt_start_time < SENTINEL_TILT_PERIOD) return;
        sentinel.tilt = 0;
        FUNC4(LL_WARNING,"-tilt",NULL,"#tilt mode exited");
    }

    /* Every kind of instance */
    FUNC3(ri);

    /* Masters and slaves */
    if (ri->flags & (SRI_MASTER|SRI_SLAVE)) {
        /* Nothing so far. */
    }

    /* Only masters */
    if (ri->flags & SRI_MASTER) {
        FUNC2(ri);
        if (FUNC8(ri))
            FUNC1(ri,SENTINEL_ASK_FORCED);
        FUNC5(ri);
        FUNC1(ri,SENTINEL_NO_FLAGS);
    }
}