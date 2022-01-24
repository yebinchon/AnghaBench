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
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct addrinfo*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
    struct addrinfo *addrs;
    struct addrinfo hints = {
        .ai_family   = AF_UNSPEC,
        .ai_socktype = SOCK_STREAM
    };
    int rc, index = 1;

    const char *host    = FUNC7(L, -2);
    const char *service = FUNC7(L, -1);

    if ((rc = FUNC4(host, service, &hints, &addrs)) != 0) {
        const char *msg = FUNC3(rc);
        FUNC1(stderr, "unable to resolve %s:%s %s\n", host, service, msg);
        FUNC0(1);
    }

    FUNC5(L);
    for (struct addrinfo *addr = addrs; addr != NULL; addr = addr->ai_next) {
        FUNC8(L, addr);
        FUNC6(L, -2, index++);
    }

    FUNC2(addrs);
    return 1;
}