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
struct addrinfo {int ai_flags; scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/ * p_timeout ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  aihint ;
struct TYPE_2__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  family; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int AI_NUMERICHOST ; 
 int AI_NUMERICSERV ; 
 int IO_DONE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,size_t,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(lua_State *L) {
    p_udp udp = (p_udp) FUNC0(L, "udp{unconnected}", 1);
    size_t count, sent = 0;
    const char *data = FUNC4(L, 2, &count);
    const char *ip = FUNC5(L, 3);
    const char *port = FUNC5(L, 4);
    p_timeout tm = &udp->tm;
    int err;
    struct addrinfo aihint;
    struct addrinfo *ai;
    FUNC9(&aihint, 0, sizeof(aihint));
    aihint.ai_family = udp->family;
    aihint.ai_socktype = SOCK_DGRAM;
    aihint.ai_flags = AI_NUMERICHOST | AI_NUMERICSERV;
    err = FUNC3(ip, port, &aihint, &ai);
	if (err) {
        FUNC6(L);
        FUNC8(L, FUNC2(err));
        return 2;
    }
    FUNC11(tm);
    err = FUNC10(&udp->sock, data, count, &sent, ai->ai_addr, 
        (socklen_t) ai->ai_addrlen, tm);
    FUNC1(ai);
    if (err != IO_DONE) {
        FUNC6(L);
        FUNC8(L, FUNC12(err));
        return 2;
    }
    FUNC7(L, (lua_Number) sent);
    return 1;
}