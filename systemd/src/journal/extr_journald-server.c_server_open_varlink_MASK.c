#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  event; int /*<<< orphan*/  varlink_server; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  VARLINK_SERVER_ROOT_ONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  vl_method_flush_to_var ; 
 int /*<<< orphan*/  vl_method_relinquish_var ; 
 int /*<<< orphan*/  vl_method_rotate ; 
 int /*<<< orphan*/  vl_method_synchronize ; 

__attribute__((used)) static int FUNC6(Server *s) {
        int r;

        FUNC0(s);

        r = FUNC4(&s->varlink_server, VARLINK_SERVER_ROOT_ONLY);
        if (r < 0)
                return r;

        FUNC5(s->varlink_server, s);

        r = FUNC2(
                        s->varlink_server,
                        "io.systemd.Journal.Synchronize",   vl_method_synchronize,
                        "io.systemd.Journal.Rotate",        vl_method_rotate,
                        "io.systemd.Journal.FlushToVar",    vl_method_flush_to_var,
                        "io.systemd.Journal.RelinquishVar", vl_method_relinquish_var);
        if (r < 0)
                return r;

        r = FUNC3(s->varlink_server, "/run/systemd/journal/io.systemd.journal", 0600);
        if (r < 0)
                return r;

        r = FUNC1(s->varlink_server, s->event, SD_EVENT_PRIORITY_NORMAL);
        if (r < 0)
                return r;

        return 0;
}