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
struct inotify_event {int mask; } ;
struct inotify_context {int delete_self_handler_called; } ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int IN_DELETE_SELF ; 
 int IN_IGNORED ; 
 int IN_Q_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inotify_context*) ; 

__attribute__((used)) static int FUNC3(sd_event_source *s, const struct inotify_event *ev, void *userdata) {
        struct inotify_context *c = userdata;

        if (ev->mask & IN_Q_OVERFLOW) {
                FUNC1("delete-self-handler: overflow");
                c->delete_self_handler_called = true;
        } else if (ev->mask & IN_DELETE_SELF) {
                FUNC1("delete-self-handler: delete-self");
                c->delete_self_handler_called = true;
        } else if (ev->mask & IN_IGNORED) {
                FUNC1("delete-self-handler: ignore");
        } else
                FUNC0("unexpected inotify event (delete-self)");

        FUNC2(s, c);
        return 1;
}