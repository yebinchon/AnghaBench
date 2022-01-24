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
typedef  scalar_t__ usec_t ;
typedef  scalar_t__ uint64_t ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  sd_login_monitor ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void) {
        sd_login_monitor *m = NULL;
        unsigned n;
        int r;

        r = FUNC8("session", &m);
        FUNC0(r >= 0);

        for (n = 0; n < 5; n++) {
                struct pollfd pollfd = {};
                usec_t timeout, nw;

                FUNC0((pollfd.fd = FUNC6(m)) >= 0);
                FUNC0((pollfd.events = FUNC5(m)) >= 0);

                FUNC0(FUNC7(m, &timeout) >= 0);

                nw = FUNC1(CLOCK_MONOTONIC);

                r = FUNC2(&pollfd, 1,
                         timeout == (uint64_t) -1 ? -1 :
                         timeout > nw ? (int) ((timeout - nw) / 1000) :
                         0);

                FUNC0(r >= 0);

                FUNC4(m);
                FUNC3("Wake!\n");
        }

        FUNC9(m);
}