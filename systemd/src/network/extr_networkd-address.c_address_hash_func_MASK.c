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
struct siphash {int dummy; } ;
typedef  int /*<<< orphan*/  prefix ;
struct TYPE_5__ {int family; int prefixlen; int in_addr; } ;
typedef  TYPE_1__ Address ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  _fallthrough_ ; 
 int FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC4(const Address *a, struct siphash *state) {
        FUNC2(a);

        FUNC3(&a->family, sizeof(a->family), state);

        switch (a->family) {
        case AF_INET:
                FUNC3(&a->prefixlen, sizeof(a->prefixlen), state);

                /* peer prefix */
                uint32_t prefix = FUNC1(a);
                FUNC3(&prefix, sizeof(prefix), state);

                _fallthrough_;
        case AF_INET6:
                /* local address */
                FUNC3(&a->in_addr, FUNC0(a->family), state);

                break;
        default:
                /* treat any other address family as AF_UNSPEC */
                break;
        }
}