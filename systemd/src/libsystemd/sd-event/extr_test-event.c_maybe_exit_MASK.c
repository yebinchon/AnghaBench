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
struct inotify_context {unsigned int create_overflow; unsigned int n_create_events; unsigned int* create_called; int /*<<< orphan*/  delete_self_handler_called; } ;
typedef  struct inotify_context sd_event_source ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inotify_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inotify_context*) ; 

__attribute__((used)) static void FUNC3(sd_event_source *s, struct inotify_context *c) {
        unsigned n;

        FUNC0(s);
        FUNC0(c);

        if (!c->delete_self_handler_called)
                return;

        for (n = 0; n < 3; n++) {
                unsigned i;

                if (c->create_overflow & (1U << n))
                        continue;

                for (i = 0; i < c->n_create_events; i++)
                        if (!(c->create_called[i] & (1U << n)))
                                return;
        }

        FUNC1(FUNC2(s), 0);
}