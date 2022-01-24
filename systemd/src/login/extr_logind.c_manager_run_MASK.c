#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int SD_EVENT_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Manager *m) {
        int r;

        FUNC0(m);

        for (;;) {
                r = FUNC3(m->event);
                if (r < 0)
                        return r;
                if (r == SD_EVENT_FINISHED)
                        return 0;

                FUNC2(m, true);

                r = FUNC1(m, false);
                if (r < 0)
                        return r;
                if (r > 0)
                        continue;

                r = FUNC4(m->event, (uint64_t) -1);
                if (r < 0)
                        return r;
        }
}