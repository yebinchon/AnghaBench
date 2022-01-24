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
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_5__ {int return_value; int /*<<< orphan*/  usec; } ;
typedef  TYPE_1__ ParseTimestampResult ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int FORK_CLOSE_ALL_FDS ; 
 int FORK_DEATHSIG ; 
 int FORK_RESET_SIGNALS ; 
 int FORK_WAIT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAP_ANONYMOUS ; 
 TYPE_1__* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 () ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char*) ; 
 char* FUNC10 (char const*,int) ; 
 char* FUNC11 (char const*,char) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tzname ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(const char *t, usec_t *usec) {
        char *last_space, *tz = NULL;
        ParseTimestampResult *shared, tmp;
        int r;

        last_space = FUNC11(t, ' ');
        if (last_space != NULL && FUNC12(last_space + 1, LOG_DEBUG))
                tz = last_space + 1;

        if (!tz || FUNC2(t, " UTC"))
                return FUNC6(t, usec, false);

        shared = FUNC3(NULL, sizeof *shared, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
        if (shared == MAP_FAILED)
                return FUNC5();

        r = FUNC7("(sd-timestamp)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_WAIT, NULL);
        if (r < 0) {
                (void) FUNC4(shared, sizeof *shared);
                return r;
        }
        if (r == 0) {
                bool with_tz = true;
                char *colon_tz;

                /* tzset(3) says $TZ should be prefixed with ":" if we reference timezone files */
                colon_tz = FUNC9(":", tz);

                if (FUNC8("TZ", colon_tz, 1) != 0) {
                        shared->return_value = FUNC5();
                        FUNC1(EXIT_FAILURE);
                }

                FUNC13();

                /* If there is a timezone that matches the tzname fields, leave the parsing to the implementation.
                 * Otherwise just cut it off. */
                with_tz = !FUNC0(tz, tzname[0], tzname[1]);

                /* Cut off the timezone if we don't need it. */
                if (with_tz)
                        t = FUNC10(t, last_space - t);

                shared->return_value = FUNC6(t, &shared->usec, with_tz);

                FUNC1(EXIT_SUCCESS);
        }

        tmp = *shared;
        if (FUNC4(shared, sizeof *shared) != 0)
                return FUNC5();

        if (tmp.return_value == 0 && usec)
                *usec = tmp.usec;

        return tmp.return_value;
}