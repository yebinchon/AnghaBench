#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_11__ {int /*<<< orphan*/  cookie; scalar_t__ patch_sender; int /*<<< orphan*/  sender; scalar_t__ sealed; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(sd_bus *b, sd_bus_message *m, usec_t timeout) {
        int r;

        FUNC2(b);
        FUNC2(m);

        if (m->sealed) {
                /* If we copy the same message to multiple
                 * destinations, avoid using the same cookie
                 * numbers. */
                b->cookie = FUNC1(b->cookie, FUNC0(m));
                return 0;
        }

        if (timeout == 0) {
                r = FUNC4(b, &timeout);
                if (r < 0)
                        return r;
        }

        if (!m->sender && b->patch_sender) {
                r = FUNC6(m, b->patch_sender);
                if (r < 0)
                        return r;
        }

        r = FUNC3(b);
        if (r < 0)
                return r;

        return FUNC5(m, b->cookie, timeout);
}