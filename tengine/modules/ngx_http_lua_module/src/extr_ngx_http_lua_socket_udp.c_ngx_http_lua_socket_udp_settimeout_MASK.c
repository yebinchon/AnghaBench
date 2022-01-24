#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_msec_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_5__ {TYPE_1__* conf; scalar_t__ read_timeout; } ;
typedef  TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ read_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  SOCKET_TIMEOUT_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(lua_State *L)
{
    int                     n;
    ngx_int_t               timeout;

    ngx_http_lua_socket_udp_upstream_t  *u;

    n = FUNC1(L);

    if (n != 2) {
        return FUNC0(L, "ngx.socket settimout: expecting at least 2 "
                          "arguments (including the object) but seen %d",
                          FUNC1(L));
    }

    timeout = (ngx_int_t) FUNC4(L, 2);

    FUNC3(L, 1, SOCKET_TIMEOUT_INDEX);

    FUNC2(L, 1, SOCKET_CTX_INDEX);
    u = FUNC5(L, -1);

    if (u) {
        if (timeout > 0) {
            u->read_timeout = (ngx_msec_t) timeout;

        } else {
            u->read_timeout = u->conf->read_timeout;
        }
    }

    return 0;
}