#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  user; TYPE_1__ passwd; } ;
struct TYPE_15__ {TYPE_3__ headers_in; TYPE_2__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, ngx_str_t *passwd,
    ngx_str_t *realm)
{
    ngx_int_t   rc;
    u_char     *encrypted;

    rc = FUNC0(r->pool, r->headers_in.passwd.data, passwd->data,
                   &encrypted);

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "rc: %i user: \"%V\" salt: \"%s\"",
                   rc, &r->headers_in.user, passwd->data);

    if (rc != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (FUNC5(encrypted, passwd->data) == 0) {
        return NGX_OK;
    }

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "encrypted: \"%s\"", encrypted);

    FUNC4(NGX_LOG_ERR, r->connection->log, 0,
                  "user \"%V\": password mismatch",
                  &r->headers_in.user);

    return FUNC1(r, realm);
}