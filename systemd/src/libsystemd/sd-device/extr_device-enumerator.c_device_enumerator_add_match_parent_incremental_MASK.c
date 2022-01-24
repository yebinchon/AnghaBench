#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int scan_uptodate; int /*<<< orphan*/  match_parent; } ;
typedef  TYPE_1__ sd_device_enumerator ;
typedef  TYPE_1__ sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 

int FUNC4(sd_device_enumerator *enumerator, sd_device *parent) {
        const char *path;
        int r;

        FUNC0(enumerator, -EINVAL);
        FUNC0(parent, -EINVAL);

        r = FUNC1(parent, &path);
        if (r < 0)
                return r;

        r = FUNC2(&enumerator->match_parent, NULL);
        if (r < 0)
                return r;

        r = FUNC3(enumerator->match_parent, path);
        if (r < 0)
                return r;

        enumerator->scan_uptodate = false;

        return 0;
}