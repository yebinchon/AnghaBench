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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sd_journal ;
struct TYPE_5__ {int timeout; int /*<<< orphan*/  input_event; int /*<<< orphan*/  events; int /*<<< orphan*/ * journal; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int JOURNAL_UPLOAD_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dispatch_journal_input ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,char*,...) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(Uploader *u,
                            sd_journal *j,
                            const char *cursor,
                            bool after_cursor,
                            bool follow) {
        int fd, r, events;

        u->journal = j;

        FUNC9(j, 0);

        if (follow) {
                fd = FUNC6(j);
                if (fd < 0)
                        return FUNC2(fd, "sd_journal_get_fd failed: %m");

                events = FUNC5(j);

                r = FUNC7(j);
                FUNC0(r >= 0);
                if (r > 0)
                        u->timeout = -1;
                else
                        u->timeout = JOURNAL_UPLOAD_POLL_TIMEOUT;

                r = FUNC4(u->events, &u->input_event,
                                    fd, events, dispatch_journal_input, u);
                if (r < 0)
                        return FUNC2(r, "Failed to register input event: %m");

                FUNC1("Listening for journal events on fd:%d, timeout %d",
                          fd, u->timeout == (uint64_t) -1 ? -1 : (int) u->timeout);
        } else
                FUNC1("Not listening for journal events.");

        if (cursor) {
                r = FUNC8(j, cursor);
                if (r < 0)
                        return FUNC2(r, "Failed to seek to cursor %s: %m",
                                               cursor);
        }

        return FUNC3(u, 1 + !!after_cursor);
}