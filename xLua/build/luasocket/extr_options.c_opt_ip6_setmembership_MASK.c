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
struct ipv6_mreq {unsigned int ipv6mr_interface; int /*<<< orphan*/  ipv6mr_multiaddr; } ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ipv6_mreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*,int) ; 

__attribute__((used)) static int FUNC14(lua_State *L, p_socket ps, int level, int name)
{
    struct ipv6_mreq val;                   /* obj, opt-name, table */
    FUNC12(&val, 0, sizeof(val));
    if (!FUNC7(L, 3)) FUNC0(L,3,FUNC11(L, LUA_TTABLE));
    FUNC8(L, "multiaddr");
    FUNC3(L, 3);
    if (!FUNC6(L, -1)) 
        FUNC2(L, 3, "string 'multiaddr' field expected");
    if (!FUNC1(AF_INET6, FUNC10(L, -1), &val.ipv6mr_multiaddr)) 
        FUNC2(L, 3, "invalid 'multiaddr' ip address");
    FUNC8(L, "interface");
    FUNC3(L, 3);
    /* By default we listen to interface on default route
     * (sigh). However, interface= can override it. We should 
     * support either number, or name for it. Waiting for
     * windows port of if_nametoindex */
    if (!FUNC4(L, -1)) {
        if (FUNC5(L, -1)) {
            val.ipv6mr_interface = (unsigned int) FUNC9(L, -1);
        } else
          FUNC2(L, -1, "number 'interface' field expected");
    }
    return FUNC13(L, ps, level, name, (char *) &val, sizeof(val));
}