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
struct utmpx {int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_LVL ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct utmpx*) ; 

int FUNC3(void) {
        struct utmpx store = {};

        FUNC0(&store, 0);

        store.ut_type = RUN_LVL;
        FUNC1(store.ut_user, "shutdown", sizeof(store.ut_user));

        return FUNC2(&store);
}