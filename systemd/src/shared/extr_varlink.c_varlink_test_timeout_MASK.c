#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ timeout; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  VARLINK_AWAITING_REPLY ; 
 int /*<<< orphan*/  VARLINK_CALLING ; 
 int /*<<< orphan*/  VARLINK_PENDING_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Varlink *v) {
        FUNC1(v);

        if (!FUNC0(v->state, VARLINK_AWAITING_REPLY, VARLINK_CALLING))
                return 0;
        if (v->timeout == USEC_INFINITY)
                return 0;

        if (FUNC2(CLOCK_MONOTONIC) < FUNC3(v->timestamp, v->timeout))
                return 0;

        FUNC4(v, VARLINK_PENDING_TIMEOUT);

        return 1;
}