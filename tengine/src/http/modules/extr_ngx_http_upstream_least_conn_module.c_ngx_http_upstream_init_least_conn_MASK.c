#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_8__ {int /*<<< orphan*/  init; } ;
struct TYPE_9__ {TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_http_upstream_srv_conf_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  ngx_http_upstream_init_least_conn_peer ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us)
{
    FUNC1(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "init least conn");

    if (FUNC0(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    us->peer.init = ngx_http_upstream_init_least_conn_peer;

    return NGX_OK;
}