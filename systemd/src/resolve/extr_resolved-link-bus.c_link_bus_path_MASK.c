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
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

char *FUNC4(const Link *link) {
        char *p, ifindex[FUNC0(link->ifindex)];
        int r;

        FUNC1(link);

        FUNC3(ifindex, "%i", link->ifindex);

        r = FUNC2("/org/freedesktop/resolve1/link", ifindex, &p);
        if (r < 0)
                return NULL;

        return p;
}