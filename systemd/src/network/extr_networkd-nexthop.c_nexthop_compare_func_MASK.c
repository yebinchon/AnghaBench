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
struct TYPE_4__ {int id; int oif; int family; int /*<<< orphan*/  gw; } ;
typedef  TYPE_1__ NextHop ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const NextHop *a, const NextHop *b) {
        int r;

        r = FUNC0(a->id, b->id);
        if (r != 0)
                return r;

        r = FUNC0(a->oif, b->oif);
        if (r != 0)
                return r;

        r = FUNC0(a->family, b->family);
        if (r != 0)
                return r;

        switch (a->family) {
        case AF_INET:
        case AF_INET6:

                r = FUNC2(&a->gw, &b->gw, FUNC1(a->family));
                if (r != 0)
                        return r;

                return 0;
        default:
                /* treat any other address family as AF_UNSPEC */
                return 0;
        }
}