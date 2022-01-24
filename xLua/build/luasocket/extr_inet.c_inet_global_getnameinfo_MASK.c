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
struct addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  hbuf ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
    char hbuf[NI_MAXHOST];
    char sbuf[NI_MAXSERV];
    int i, ret;
    struct addrinfo hints;
    struct addrinfo *resolved, *iter;
    const char *host = FUNC4(L, 1, NULL);
    const char *serv = FUNC4(L, 2, NULL);

    if (!(host || serv))
        FUNC3(L, "host and serv cannot be both nil");

    FUNC10(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_family = PF_UNSPEC;

    ret = FUNC1(host, serv, &hints, &resolved);
    if (ret != 0) {
        FUNC6(L);
        FUNC8(L, FUNC11(ret));
        return 2;
    }

    FUNC5(L);
    for (i = 1, iter = resolved; iter; i++, iter = iter->ai_next) {
        FUNC2(iter->ai_addr, (socklen_t) iter->ai_addrlen, 
            hbuf, host? (socklen_t) sizeof(hbuf): 0, 
            sbuf, serv? (socklen_t) sizeof(sbuf): 0, 0);
        if (host) {
            FUNC7(L, i);
            FUNC8(L, hbuf);
            FUNC9(L, -3);
        }
    }
    FUNC0(resolved);

    if (serv) {
        FUNC8(L, sbuf);
        return 2;
    } else {
        return 1;
    }
}