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
struct addrinfo {int ai_family; scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  hbuf ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(lua_State *L)
{
    const char *hostname = FUNC3(L, 1);
    struct addrinfo *iterator = NULL, *resolved = NULL;
    struct addrinfo hints;
    int i = 1, ret = 0;
    FUNC10(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_family = PF_UNSPEC;
    ret = FUNC1(hostname, NULL, &hints, &resolved);
    if (ret != 0) {
        FUNC6(L);
        FUNC8(L, FUNC11(ret));
        return 2;
    }
    FUNC4(L);
    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        char hbuf[NI_MAXHOST];
        ret = FUNC2(iterator->ai_addr, (socklen_t) iterator->ai_addrlen, 
            hbuf, (socklen_t) sizeof(hbuf), NULL, 0, NI_NUMERICHOST);
        if (ret){
          FUNC6(L);
          FUNC8(L, FUNC11(ret));
          return 2;
        }
        FUNC7(L, i);
        FUNC4(L);
        switch (iterator->ai_family) {
            case AF_INET:
                FUNC5(L, "family");
                FUNC5(L, "inet");
                FUNC9(L, -3);
                break;
            case AF_INET6:
                FUNC5(L, "family");
                FUNC5(L, "inet6");
                FUNC9(L, -3);
                break;
        }
        FUNC5(L, "addr");
        FUNC8(L, hbuf);
        FUNC9(L, -3);
        FUNC9(L, -3);
        i++;
    }
    FUNC0(resolved);
    return 1;
}