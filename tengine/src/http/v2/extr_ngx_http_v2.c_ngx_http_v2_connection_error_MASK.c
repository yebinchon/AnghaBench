#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_V2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u_char *
FUNC3(ngx_http_v2_connection_t *h2c,
    ngx_uint_t err)
{
    FUNC2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 state connection error");

    if (err == NGX_HTTP_V2_INTERNAL_ERROR) {
        FUNC0();
    }

    FUNC1(h2c, err);

    return NULL;
}