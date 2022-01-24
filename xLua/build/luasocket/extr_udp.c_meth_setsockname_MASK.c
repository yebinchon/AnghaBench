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
struct addrinfo {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_socktype; } ;
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  bindhints ;
struct TYPE_2__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,struct addrinfo*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
    p_udp udp = (p_udp) FUNC0(L, "udp{unconnected}", 1);
    const char *address =  FUNC2(L, 2);
    const char *port = FUNC2(L, 3);
    const char *err;
    struct addrinfo bindhints;
    FUNC6(&bindhints, 0, sizeof(bindhints));
    bindhints.ai_socktype = SOCK_DGRAM;
    bindhints.ai_family = udp->family;
    bindhints.ai_flags = AI_PASSIVE;
    err = FUNC1(&udp->sock, address, port, &bindhints);
    if (err) {
        FUNC3(L);
        FUNC5(L, err);
        return 2;
    }
    FUNC4(L, 1);
    return 1;
}