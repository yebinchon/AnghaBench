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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 struct addrinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
    struct addrinfo *addr = FUNC0(L);
    char host[NI_MAXHOST];
    char service[NI_MAXSERV];

    int flags = NI_NUMERICHOST | NI_NUMERICSERV;
    int rc = FUNC2(addr->ai_addr, addr->ai_addrlen, host, NI_MAXHOST, service, NI_MAXSERV, flags);
    if (rc != 0) {
        const char *msg = FUNC1(rc);
        return FUNC3(L, "addr tostring failed %s", msg);
    }

    FUNC4(L, "%s:%s", host, service);
    return 1;
}