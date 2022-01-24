#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ input_fd; int accept_fd; scalar_t__ output_fd; scalar_t__ is_server; scalar_t__ auth_timeout; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  BUS_AUTHENTICATING ; 
 scalar_t__ BUS_AUTH_TIMEOUT ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(sd_bus *b) {
        FUNC0(b);

        FUNC1(b);

        FUNC2(b, BUS_AUTHENTICATING);
        b->auth_timeout = FUNC5(CLOCK_MONOTONIC) + BUS_AUTH_TIMEOUT;

        if (FUNC6(b->input_fd, AF_UNIX, 0, 0) <= 0)
                b->accept_fd = false;

        if (b->output_fd != b->input_fd)
                if (FUNC6(b->output_fd, AF_UNIX, 0, 0) <= 0)
                        b->accept_fd = false;

        if (b->is_server)
                return FUNC3(b);
        else
                return FUNC4(b);
}