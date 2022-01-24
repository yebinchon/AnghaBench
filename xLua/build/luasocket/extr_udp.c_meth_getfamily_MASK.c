#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(lua_State *L)
{
    p_udp udp = (p_udp) FUNC0(L, "udp{any}", 1);
    if (udp->family == PF_INET6) {
        FUNC1(L, "inet6");
        return 1;
    } else {
        FUNC1(L, "inet4");
        return 1;
    }
}