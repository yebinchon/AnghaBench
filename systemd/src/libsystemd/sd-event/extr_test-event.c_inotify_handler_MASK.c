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
struct inotify_event {int mask; char const* name; } ;
struct inotify_context {unsigned int create_overflow; unsigned int n_create_events; unsigned int* create_called; } ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_Q_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inotify_context*) ; 
 scalar_t__ FUNC5 (char const*,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(sd_event_source *s, const struct inotify_event *ev, void *userdata) {
        struct inotify_context *c = userdata;
        const char *description;
        unsigned bit, n;

        FUNC1(FUNC6(s, &description) >= 0);
        FUNC1(FUNC5(description, &n) >= 0);

        FUNC1(n <= 3);
        bit = 1U << n;

        if (ev->mask & IN_Q_OVERFLOW) {
                FUNC3("inotify-handler <%s>: overflow", description);
                c->create_overflow |= bit;
        } else if (ev->mask & IN_CREATE) {
                unsigned i;

                FUNC2("inotify-handler <%s>: create on %s", description, ev->name);

                if (!FUNC7(ev->name, "sub")) {
                        FUNC1(FUNC5(ev->name, &i) >= 0);

                        FUNC1(i < c->n_create_events);
                        c->create_called[i] |= bit;
                }
        } else if (ev->mask & IN_DELETE) {
                FUNC3("inotify-handler <%s>: delete of %s", description, ev->name);
                FUNC1(FUNC7(ev->name, "sub"));
        } else
                FUNC0("unexpected inotify event");

        FUNC4(s, c);
        return 1;
}