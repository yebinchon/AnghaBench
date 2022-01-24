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
typedef  TYPE_1__* p_udp ;
typedef  int /*<<< orphan*/ * p_timeout ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int IO_CLOSED ; 
 int IO_DONE ; 
 size_t FUNC0 (size_t,int) ; 
 int UDP_DATAGRAMSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
    p_udp udp = (p_udp) FUNC1(L, "udp{any}", 1);
    char buffer[UDP_DATAGRAMSIZE];
    size_t got, count = (size_t) FUNC2(L, 2, sizeof(buffer));
    int err;
    p_timeout tm = &udp->tm;
    count = FUNC0(count, sizeof(buffer));
    FUNC7(tm);
    err = FUNC6(&udp->sock, buffer, count, &got, tm);
    /* Unlike TCP, recv() of zero is not closed, but a zero-length packet. */
    if (err == IO_CLOSED)
        err = IO_DONE;
    if (err != IO_DONE) {
        FUNC4(L);
        FUNC5(L, FUNC8(err));
        return 2;
    }
    FUNC3(L, buffer, got);
    return 1;
}