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
typedef  int uint32_t ;
struct TYPE_5__ {int family; int prefixlen; int /*<<< orphan*/  in_addr; } ;
typedef  TYPE_1__ Address ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  _fallthrough_ ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const Address *a1, const Address *a2) {
        int r;

        r = FUNC0(a1->family, a2->family);
        if (r != 0)
                return r;

        switch (a1->family) {
        /* use the same notion of equality as the kernel does */
        case AF_INET:
                r = FUNC0(a1->prefixlen, a2->prefixlen);
                if (r != 0)
                        return r;

                uint32_t prefix1 = FUNC2(a1);
                uint32_t prefix2 = FUNC2(a2);
                r = FUNC0(prefix1, prefix2);
                if (r != 0)
                        return r;

                _fallthrough_;
        case AF_INET6:
                return FUNC3(&a1->in_addr, &a2->in_addr, FUNC1(a1->family));
        default:
                /* treat any other address family as AF_UNSPEC */
                return 0;
        }
}