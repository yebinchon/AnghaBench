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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

int FUNC2(sd_device *dev) {
        int r;

        FUNC0(dev);

        r = FUNC1(dev, "ID_RENAMING", NULL);
        if (r < 0 && r != -ENOENT)
                return r;

        return r >= 0;
}