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
struct TYPE_4__ {int default_route; int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Link *l) {
        int r;

        FUNC0(l);

        r = FUNC1(l->ifindex);
        if (r == -ENODATA) {
                r = 0;
                goto clear;
        }
        if (r < 0)
                goto clear;

        l->default_route = r > 0;
        return 0;

clear:
        l->default_route = -1;
        return r;
}