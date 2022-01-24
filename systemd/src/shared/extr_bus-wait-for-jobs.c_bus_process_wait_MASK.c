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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sd_bus *bus) {
        int r;

        for (;;) {
                r = FUNC0(bus, NULL);
                if (r < 0)
                        return r;
                if (r > 0)
                        return 0;

                r = FUNC1(bus, (uint64_t) -1);
                if (r < 0)
                        return r;
        }
}