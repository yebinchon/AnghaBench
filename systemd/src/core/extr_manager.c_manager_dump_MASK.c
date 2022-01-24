#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  monotonic; int /*<<< orphan*/  realtime; } ;
typedef  TYPE_1__ dual_timestamp ;
struct TYPE_14__ {TYPE_1__* timestamps; } ;
typedef  scalar_t__ ManagerTimestamp ;
typedef  TYPE_2__ Manager ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  FORMAT_TIMESTAMP_MAX ; 
 scalar_t__ _MANAGER_TIMESTAMP_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,char const*) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(Manager *m, FILE *f, const char *prefix) {
        ManagerTimestamp q;

        FUNC1(m);
        FUNC1(f);

        for (q = 0; q < _MANAGER_TIMESTAMP_MAX; q++) {
                const dual_timestamp *t = m->timestamps + q;
                char buf[FUNC0(FORMAT_TIMESPAN_MAX, FORMAT_TIMESTAMP_MAX)];

                if (FUNC2(t))
                        FUNC5(f, "%sTimestamp %s: %s\n",
                                FUNC9(prefix),
                                FUNC8(q),
                                FUNC10(t->realtime) ? FUNC4(buf, sizeof buf, t->realtime) :
                                                                FUNC3(buf, sizeof buf, t->monotonic, 1));
        }

        FUNC7(m, f, prefix);
        FUNC6(m, f, prefix);
}