#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dns_stub_listener_mode; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ DNS_STUB_LISTENER_NO ; 
 scalar_t__ DNS_STUB_LISTENER_TCP ; 
 scalar_t__ DNS_STUB_LISTENER_UDP ; 
 int DNS_STUB_LISTENER_YES ; 
 int EADDRINUSE ; 
 scalar_t__ EPERM ; 
 scalar_t__ FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 

int FUNC8(Manager *m) {
        const char *t = "UDP";
        int r = 0;

        FUNC1(m);

        if (m->dns_stub_listener_mode == DNS_STUB_LISTENER_NO)
                FUNC2("Not creating stub listener.");
        else
                FUNC2("Creating stub listener using %s.",
                          m->dns_stub_listener_mode == DNS_STUB_LISTENER_UDP ? "UDP" :
                          m->dns_stub_listener_mode == DNS_STUB_LISTENER_TCP ? "TCP" :
                          "UDP/TCP");

        if (FUNC0(m->dns_stub_listener_mode, DNS_STUB_LISTENER_YES, DNS_STUB_LISTENER_UDP))
                r = FUNC7(m);

        if (r >= 0 &&
            FUNC0(m->dns_stub_listener_mode, DNS_STUB_LISTENER_YES, DNS_STUB_LISTENER_TCP)) {
                t = "TCP";
                r = FUNC6(m);
        }

        if (FUNC0(r, -EADDRINUSE, -EPERM)) {
                if (r == -EADDRINUSE)
                        FUNC4(r,
                                          "Another process is already listening on %s socket 127.0.0.53:53.\n"
                                          "Turning off local DNS stub support.", t);
                else
                        FUNC4(r,
                                          "Failed to listen on %s socket 127.0.0.53:53: %m.\n"
                                          "Turning off local DNS stub support.", t);
                FUNC5(m);
        } else if (r < 0)
                return FUNC3(r, "Failed to listen on %s socket 127.0.0.53:53: %m", t);

        return 0;
}