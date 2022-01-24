#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  src_key; TYPE_2__ src; } ;
struct TYPE_13__ {TYPE_3__ balancer; } ;
typedef  TYPE_5__ ngx_http_lua_srv_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_lua_srv_conf_t *lscf, lua_State *L)
{
    ngx_int_t           rc;

    rc = FUNC3(r->connection->log, L,
                                     lscf->balancer.src.data,
                                     lscf->balancer.src_key);
    if (rc != NGX_OK) {
        return rc;
    }

    /*  make sure we have a valid code chunk */
    FUNC1(FUNC0(L, -1));

    return FUNC2(L, r);
}