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
struct addrinfo {int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_socktype; } ;
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/ * p_timeout ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  connecthints ;
struct TYPE_2__ {int /*<<< orphan*/  family; int /*<<< orphan*/  sock; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
    p_udp udp = (p_udp) FUNC0(L, "udp{any}", 1);
    p_timeout tm = &udp->tm;
    const char *address = FUNC4(L, 2);
    int connecting = FUNC9(address, "*");
    const char *port = connecting? FUNC4(L, 3): "0";
    struct addrinfo connecthints;
    const char *err;
    FUNC8(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_DGRAM;
    /* make sure we try to connect only to the same family */
    connecthints.ai_family = udp->family;
    if (connecting) {
        err = FUNC2(&udp->sock, &udp->family, address, 
            port, tm, &connecthints);
        if (err) {
            FUNC5(L);
            FUNC7(L, err);
            return 2;
        }
        FUNC1(L, "udp{connected}", 1);
    } else {
        /* we ignore possible errors because Mac OS X always
         * returns EAFNOSUPPORT */
        FUNC3(&udp->sock, udp->family, tm);
        FUNC1(L, "udp{unconnected}", 1);
    }
    /* change class to connected or unconnected depending on address */
    FUNC6(L, 1);
    return 1;
}