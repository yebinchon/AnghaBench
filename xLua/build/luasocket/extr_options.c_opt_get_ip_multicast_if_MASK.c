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
typedef  int /*<<< orphan*/  val ;
struct in_addr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_MULTICAST_IF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC1 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

int FUNC4(lua_State *L, p_socket ps)
{
    struct in_addr val;
    socklen_t len = sizeof(val);
    if (FUNC0(*ps, IPPROTO_IP, IP_MULTICAST_IF, (char *) &val, &len) < 0) {
        FUNC2(L);
        FUNC3(L, "getsockopt failed");
        return 2;
    }
    FUNC3(L, FUNC1(val));
    return 1;
}