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
struct utsname {char* release; } ;
struct utmpx {int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC1 (struct utmpx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct utsname*) ; 

__attribute__((used)) static void FUNC4(struct utmpx *store, usec_t t) {
        struct utsname uts = {};

        FUNC0(store);

        FUNC1(store, t);

        if (FUNC3(&uts) >= 0)
                FUNC2(store->ut_host, uts.release, sizeof(store->ut_host));

        FUNC2(store->ut_line, "~", sizeof(store->ut_line));  /* or ~~ ? */
        FUNC2(store->ut_id, "~~", sizeof(store->ut_id));
}