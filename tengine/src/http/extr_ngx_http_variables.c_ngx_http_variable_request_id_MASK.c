#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int valid; int len; int /*<<< orphan*/ * data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_8__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_6__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char  *id;

#if (NGX_OPENSSL)
    u_char   random_bytes[16];
#endif

    id = FUNC2(r->pool, 32);
    if (id == NULL) {
        return NGX_ERROR;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->len = 32;
    v->data = id;

#if (NGX_OPENSSL)

    if (RAND_bytes(random_bytes, 16) == 1) {
        ngx_hex_dump(id, random_bytes, 16);
        return NGX_OK;
    }

    ngx_ssl_error(NGX_LOG_ERR, r->connection->log, 0, "RAND_bytes() failed");

#endif

    FUNC4(id, "%08xD%08xD%08xD%08xD",
                (uint32_t) FUNC3(), (uint32_t) FUNC3(),
                (uint32_t) FUNC3(), (uint32_t) FUNC3());

    return NGX_OK;
}