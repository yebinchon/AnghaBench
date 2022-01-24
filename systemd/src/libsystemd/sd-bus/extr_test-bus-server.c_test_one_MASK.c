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
struct context {int client_negotiate_unix_fds; int server_negotiate_unix_fds; int client_anonymous_auth; int server_anonymous_auth; int /*<<< orphan*/  fds; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct context*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct context*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  server ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct context) ; 

__attribute__((used)) static int FUNC7(bool client_negotiate_unix_fds, bool server_negotiate_unix_fds,
                    bool client_anonymous_auth, bool server_anonymous_auth) {

        struct context c;
        pthread_t s;
        void *p;
        int r, q;

        FUNC6(c);

        FUNC1(FUNC5(AF_UNIX, SOCK_STREAM, 0, c.fds) >= 0);

        c.client_negotiate_unix_fds = client_negotiate_unix_fds;
        c.server_negotiate_unix_fds = server_negotiate_unix_fds;
        c.client_anonymous_auth = client_anonymous_auth;
        c.server_anonymous_auth = server_anonymous_auth;

        r = FUNC3(&s, NULL, server, &c);
        if (r != 0)
                return -r;

        r = FUNC2(&c);

        q = FUNC4(s, &p);
        if (q != 0)
                return -q;

        if (r < 0)
                return r;

        if (FUNC0(p) < 0)
                return FUNC0(p);

        return 0;
}