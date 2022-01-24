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
typedef  int /*<<< orphan*/  s ;
struct TYPE_5__ {int /*<<< orphan*/  realtime; int /*<<< orphan*/  monotonic; } ;
typedef  TYPE_1__ dual_timestamp ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  FORMAT_TIMESTAMP_MAX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void) {
        char s[FUNC0(FORMAT_TIMESPAN_MAX, FORMAT_TIMESTAMP_MAX)];
        dual_timestamp fw, l, k;
        int r;

        FUNC2(&k, 0);

        r = FUNC1(NULL, &fw, &l);
        if (r < 0) {
                bool ok = r == -ENOENT || (FUNC5() != 0 && r == -EACCES) || r == -EOPNOTSUPP;

                FUNC6(ok ? LOG_DEBUG : LOG_ERR, r, "Failed to read variables: %m");
                return ok ? 0 : r;
        }

        FUNC7("Firmware began %s before kernel.", FUNC3(s, sizeof(s), fw.monotonic, 0));
        FUNC7("Loader began %s before kernel.", FUNC3(s, sizeof(s), l.monotonic, 0));
        FUNC7("Firmware began %s.", FUNC4(s, sizeof(s), fw.realtime));
        FUNC7("Loader began %s.", FUNC4(s, sizeof(s), l.realtime));
        FUNC7("Kernel began %s.", FUNC4(s, sizeof(s), k.realtime));
        return 1;
}