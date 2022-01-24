#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_10__ {int /*<<< orphan*/  timezone; } ;
struct TYPE_9__ {int return_value; int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ SpecNextResult ;
typedef  TYPE_2__ CalendarSpec ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int FORK_CLOSE_ALL_FDS ; 
 int FORK_DEATHSIG ; 
 int FORK_RESET_SIGNALS ; 
 int FORK_WAIT ; 
 int MAP_ANONYMOUS ; 
 TYPE_1__* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 () ; 
 int FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(const CalendarSpec *spec, usec_t usec, usec_t *ret_next) {
        SpecNextResult *shared, tmp;
        int r;

        FUNC1(spec);

        if (FUNC3(spec->timezone))
                return FUNC2(spec, usec, ret_next);

        shared = FUNC4(NULL, sizeof *shared, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
        if (shared == MAP_FAILED)
                return FUNC6();

        r = FUNC7("(sd-calendar)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_WAIT, NULL);
        if (r < 0) {
                (void) FUNC5(shared, sizeof *shared);
                return r;
        }
        if (r == 0) {
                char *colon_tz;

                /* tzset(3) says $TZ should be prefixed with ":" if we reference timezone files */
                colon_tz = FUNC9(":", spec->timezone);

                if (FUNC8("TZ", colon_tz, 1) != 0) {
                        shared->return_value = FUNC6();
                        FUNC0(EXIT_FAILURE);
                }

                FUNC10();

                shared->return_value = FUNC2(spec, usec, &shared->next);

                FUNC0(EXIT_SUCCESS);
        }

        tmp = *shared;
        if (FUNC5(shared, sizeof *shared) < 0)
                return FUNC6();

        if (tmp.return_value == 0 && ret_next)
                *ret_next = tmp.next;

        return tmp.return_value;
}