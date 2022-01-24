#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  reply_callbacks; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 scalar_t__ COOKIE_CYCLED ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_bus *b) {
        uint64_t new_cookie;

        FUNC1(b);

        new_cookie = FUNC2(b->cookie);

        /* Small optimization: don't bother with checking for cookie reuse until we overran cookiespace at
         * least once, but then do it thorougly. */
        if (FUNC0(new_cookie, COOKIE_CYCLED)) {
                uint32_t i;

                /* Check if the cookie is currently in use. If so, pick the next one */
                for (i = 0; i < COOKIE_CYCLED; i++) {
                        if (!FUNC3(b->reply_callbacks, &new_cookie))
                                goto good;

                        new_cookie = FUNC2(new_cookie);
                }

                /* Can't fulfill request */
                return -EBUSY;
        }

good:
        b->cookie = new_cookie;
        return 0;
}