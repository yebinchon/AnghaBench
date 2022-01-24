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
typedef  int /*<<< orphan*/  usec_t ;
struct utmpx {int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct utmpx*) ; 

int FUNC3(usec_t t) {
        struct utmpx store = {};

        FUNC0(&store, t);

        store.ut_type = BOOT_TIME;
        FUNC1(store.ut_user, "reboot", sizeof(store.ut_user));

        return FUNC2(&store);
}