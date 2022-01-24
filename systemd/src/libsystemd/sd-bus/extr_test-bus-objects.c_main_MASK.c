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
struct context {int automatic_integer_property; int automatic_string_property; int something; int /*<<< orphan*/  fds; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int EXIT_SUCCESS ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct context*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  server ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 

int FUNC8(int argc, char *argv[]) {
        struct context c = {};
        pthread_t s;
        void *p;
        int r, q;

        c.automatic_integer_property = 4711;
        FUNC1(c.automatic_string_property = FUNC7("dudeldu"));

        FUNC1(FUNC6(AF_UNIX, SOCK_STREAM, 0, c.fds) >= 0);

        r = FUNC4(&s, NULL, server, &c);
        if (r != 0)
                return -r;

        r = FUNC2(&c);

        q = FUNC5(s, &p);
        if (q != 0)
                return -q;

        if (r < 0)
                return r;

        if (FUNC0(p) < 0)
                return FUNC0(p);

        FUNC3(c.something);
        FUNC3(c.automatic_string_property);

        return EXIT_SUCCESS;
}