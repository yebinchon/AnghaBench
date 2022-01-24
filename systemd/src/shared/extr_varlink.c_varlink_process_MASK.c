#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ state; scalar_t__ defer_event_source; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int /*<<< orphan*/  SD_EVENT_ON ; 
 scalar_t__ VARLINK_DISCONNECTED ; 
 int /*<<< orphan*/  VARLINK_PENDING_DISCONNECT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 

int FUNC16(Varlink *v) {
        int r;

        FUNC1(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return -ENOTCONN;

        FUNC10(v);

        r = FUNC15(v);
        if (r != 0)
                goto finish;

        r = FUNC6(v);
        if (r != 0)
                goto finish;

        r = FUNC5(v);
        if (r != 0)
                goto finish;

        r = FUNC8(v);
        if (r != 0)
                goto finish;

        r = FUNC9(v);
        if (r != 0)
                goto finish;

        r = FUNC12(v);
        if (r != 0)
                goto finish;

        r = FUNC4(v);
        if (r != 0)
                goto finish;

        r = FUNC13(v);
        if (r != 0)
                goto finish;

        r = FUNC7(v);
        if (r != 0)
                goto finish;

finish:
        if (r >= 0 && v->defer_event_source) {
                int q;

                /* If we did some processing, make sure we are called again soon */
                q = FUNC2(v->defer_event_source, r > 0 ? SD_EVENT_ON : SD_EVENT_OFF);
                if (q < 0)
                        r = q;
        }

        if (r < 0) {
                if (FUNC0(v->state))
                        /* Initiate disconnection */
                        FUNC11(v, VARLINK_PENDING_DISCONNECT);
                else
                        /* We failed while disconnecting, in that case close right away */
                        FUNC3(v);
        }

        FUNC14(v);
        return r;
}