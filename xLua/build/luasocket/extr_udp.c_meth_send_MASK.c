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
typedef  int /*<<< orphan*/  lua_Number ;
struct TYPE_2__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int IO_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(lua_State *L) {
    p_udp udp = (p_udp) FUNC0(L, "udp{connected}", 1);
    p_timeout tm = &udp->tm;
    size_t count, sent = 0;
    int err;
    const char *data = FUNC1(L, 2, &count);
    FUNC6(tm);
    err = FUNC5(&udp->sock, data, count, &sent, tm);
    if (err != IO_DONE) {
        FUNC2(L);
        FUNC4(L, FUNC7(err));
        return 2;
    }
    FUNC3(L, (lua_Number) sent);
    return 1;
}