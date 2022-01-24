#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int e_termination; int e_exit; } ;
struct utmpx {scalar_t__ ut_pid; int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_user; TYPE_1__ ut_exit; int /*<<< orphan*/  ut_type; int /*<<< orphan*/  ut_id; } ;
typedef  int /*<<< orphan*/  store_wtmp ;
typedef  int /*<<< orphan*/  store ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD_PROCESS ; 
 int /*<<< orphan*/  INIT_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*) ; 
 struct utmpx* FUNC2 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC3 (struct utmpx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct utmpx*,struct utmpx*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct utmpx*,struct utmpx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(const char *id, pid_t pid, int code, int status) {
        struct utmpx lookup = {
                .ut_type = INIT_PROCESS /* looks for DEAD_PROCESS, LOGIN_PROCESS, USER_PROCESS, too */
        }, store, store_wtmp, *found;

        FUNC0(id);

        FUNC5();

        /* Copy the whole string if it fits, or just the suffix without the terminating NUL. */
        FUNC1(store.ut_id, sizeof(store.ut_id), id);

        found = FUNC2(&lookup);
        if (!found)
                return 0;

        if (found->ut_pid != pid)
                return 0;

        FUNC4(&store, found, sizeof(store));
        store.ut_type = DEAD_PROCESS;
        store.ut_exit.e_termination = code;
        store.ut_exit.e_exit = status;

        FUNC7(store.ut_user);
        FUNC7(store.ut_host);
        FUNC7(store.ut_tv);

        FUNC4(&store_wtmp, &store, sizeof(store_wtmp));
        /* wtmp wants the current time */
        FUNC3(&store_wtmp, 0);

        return FUNC6(&store, &store_wtmp);
}