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
typedef  int usec_t ;
struct TYPE_6__ {scalar_t__ timer; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ CurlGlue ;
typedef  TYPE_1__ CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  curl_glue_on_timer ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(CURLM *curl, long timeout_ms, void *userdata) {
        CurlGlue *g = userdata;
        usec_t usec;

        FUNC0(curl);
        FUNC0(g);

        if (timeout_ms < 0) {
                if (g->timer) {
                        if (FUNC5(g->timer, SD_EVENT_OFF) < 0)
                                return -1;
                }

                return 0;
        }

        usec = FUNC2(FUNC1()) + (usec_t) timeout_ms * USEC_PER_MSEC + USEC_PER_MSEC - 1;

        if (g->timer) {
                if (FUNC6(g->timer, usec) < 0)
                        return -1;

                if (FUNC5(g->timer, SD_EVENT_ONESHOT) < 0)
                        return -1;
        } else {
                if (FUNC3(g->event, &g->timer, FUNC1(), usec, 0, curl_glue_on_timer, g) < 0)
                        return -1;

                (void) FUNC4(g->timer, "curl-timer");
        }

        return 0;
}