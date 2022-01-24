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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_id128_t uuid, const char *path, bool in_order) {
        uint16_t slot;
        int r;

        if (!FUNC2())
                return 0;

        r = FUNC1(uuid, path, &slot);
        if (r != 1)
                return 0;

        r = FUNC0(slot);
        if (r < 0)
                return r;

        if (in_order)
                return FUNC3(slot);

        return 0;
}