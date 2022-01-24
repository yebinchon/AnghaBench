#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct iovec {int dummy; } ;
struct TYPE_4__ {scalar_t__ monotonic; scalar_t__ realtime; } ;
typedef  TYPE_1__ dual_timestamp ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 struct iovec FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,struct iovec*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(JournalFile *f, int n, uint64_t *seqnum) {
        char *p;
        dual_timestamp ts;
        static dual_timestamp previous_ts = {};
        struct iovec iovec[1];

        FUNC4(&ts);

        if (ts.monotonic <= previous_ts.monotonic)
                ts.monotonic = previous_ts.monotonic + 1;

        if (ts.realtime <= previous_ts.realtime)
                ts.realtime = previous_ts.realtime + 1;

        previous_ts = ts;

        FUNC3(FUNC1(&p, "NUMBER=%d", n) >= 0);
        iovec[0] = FUNC0(p);
        FUNC2(FUNC6(f, &ts, NULL, iovec, 1, seqnum, NULL, NULL));
        FUNC5(p);
}