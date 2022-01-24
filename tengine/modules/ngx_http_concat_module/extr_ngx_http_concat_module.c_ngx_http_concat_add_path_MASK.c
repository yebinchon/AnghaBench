#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_14__ {int len; char* data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_16__ {size_t nelts; } ;
typedef  TYPE_4__ ngx_array_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_BAD_REQUEST ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LOG_UNSAFE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 TYPE_2__* FUNC0 (TYPE_4__*) ; 
 char* FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, ngx_array_t *uris,
    size_t max, ngx_str_t *path, u_char *p, u_char *v)
{
    u_char     *d;
    ngx_str_t  *uri, args;
    ngx_uint_t  flags;

    if (p == v) {
        FUNC4(NGX_LOG_ERR, r->connection->log, 0,
                      "client sent zero concat filename");
        return NGX_HTTP_BAD_REQUEST;
    }

    if (uris->nelts >= max) {
        FUNC4(NGX_LOG_ERR, r->connection->log, 0,
                      "client sent too many concat filenames");
        return NGX_HTTP_BAD_REQUEST;
    }

    uri = FUNC0(uris);
    if (uri == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    uri->len = path->len + p - v;
    uri->data = FUNC5(r->pool, uri->len + 1);  /* + '\0' */
    if (uri->data == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    d = FUNC1(uri->data, path->data, path->len);
    d = FUNC1(d, v, p - v);
    *d = '\0';

    args.len = 0;
    args.data = NULL;
    flags = NGX_HTTP_LOG_UNSAFE;

    if (FUNC2(r, uri, &args, &flags) != NGX_OK) {
        return NGX_HTTP_BAD_REQUEST;
    }

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http concat add file: \"%s\"", uri->data);

    return NGX_OK;
}