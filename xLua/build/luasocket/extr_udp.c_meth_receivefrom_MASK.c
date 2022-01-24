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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/ * p_timeout ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  tm; } ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int IO_CLOSED ; 
 int IO_DONE ; 
 size_t FUNC0 (size_t,int) ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int UDP_DATAGRAMSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,size_t,size_t*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(lua_State *L)
{
    p_udp udp = (p_udp) FUNC1(L, "udp{unconnected}", 1);
    char buffer[UDP_DATAGRAMSIZE];
    size_t got, count = (size_t) FUNC4(L, 2, sizeof(buffer));
    int err;
    p_timeout tm = &udp->tm;
    struct sockaddr_storage addr;
    socklen_t addr_len = sizeof(addr);
    char addrstr[INET6_ADDRSTRLEN];
    char portstr[6];
    FUNC11(tm);
    count = FUNC0(count, sizeof(buffer));
    err = FUNC9(&udp->sock, buffer, count, &got, (SA *) &addr, 
            &addr_len, tm);
    /* Unlike TCP, recv() of zero is not closed, but a zero-length packet. */
    if (err == IO_CLOSED)
        err = IO_DONE;
    if (err != IO_DONE) {
        FUNC7(L);
        FUNC8(L, FUNC12(err));
        return 2;
    }
    err = FUNC3((struct sockaddr *)&addr, addr_len, addrstr, 
        INET6_ADDRSTRLEN, portstr, 6, NI_NUMERICHOST | NI_NUMERICSERV);
	if (err) {
        FUNC7(L);
        FUNC8(L, FUNC2(err));
        return 2;
    }
    FUNC6(L, buffer, got);
    FUNC8(L, addrstr);
    FUNC5(L, (int) FUNC10(portstr, (char **) NULL, 10));
    return 3;
}