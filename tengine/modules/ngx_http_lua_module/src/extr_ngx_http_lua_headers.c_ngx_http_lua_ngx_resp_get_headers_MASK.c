#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_18__ {size_t len; scalar_t__ data; } ;
struct TYPE_17__ {size_t len; scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ hash; TYPE_6__ value; TYPE_5__ key; } ;
typedef  TYPE_7__ ngx_table_elt_t ;
struct TYPE_20__ {int nelts; TYPE_7__* elts; struct TYPE_20__* next; } ;
typedef  TYPE_8__ ngx_list_part_t ;
struct TYPE_14__ {TYPE_8__ part; } ;
struct TYPE_13__ {size_t len; scalar_t__ data; } ;
struct TYPE_15__ {scalar_t__ content_length_n; scalar_t__ status; TYPE_2__ headers; int /*<<< orphan*/ * content_length; TYPE_1__ content_type; } ;
struct TYPE_21__ {TYPE_4__* connection; TYPE_3__ headers_out; scalar_t__ chunked; scalar_t__ keepalive; } ;
typedef  TYPE_9__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int NGX_HTTP_LUA_MAX_HEADERS ; 
 scalar_t__ NGX_HTTP_SWITCHING_PROTOCOLS ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  headers_metatable_key ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 TYPE_9__* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC23(lua_State *L)
{
    ngx_list_part_t    *part;
    ngx_table_elt_t    *header;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    u_char             *lowcase_key = NULL;
    size_t              lowcase_key_sz = 0;
    ngx_uint_t          i;
    int                 n;
    int                 max;
    int                 raw = 0;
    int                 count = 0;
    int                 truncated = 0;
    int                 extra = 0;

    n = FUNC4(L);

    if (n >= 1) {
        if (FUNC6(L, 1)) {
            max = NGX_HTTP_LUA_MAX_HEADERS;

        } else {
            max = FUNC1(L, 1);
        }

        if (n >= 2) {
            raw = FUNC15(L, 2);
        }

    } else {
        max = NGX_HTTP_LUA_MAX_HEADERS;
    }

    r = FUNC18(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    ctx = FUNC16(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no ctx found");
    }

    FUNC17(L, r);

    part = &r->headers_out.headers.part;
    count = part->nelts;
    while (part->next != NULL) {
        part = part->next;
        count += part->nelts;
    }

    FUNC3(L, 0, count + 2);

    if (!raw) {
        FUNC9(L, FUNC19(
                              headers_metatable_key));
        FUNC12(L, LUA_REGISTRYINDEX);
        FUNC14(L, -2);
    }

#if 1
    if (r->headers_out.content_type.len) {
        extra++;
        FUNC10(L, "content-type");
        FUNC11(L, (char *) r->headers_out.content_type.data,
                        r->headers_out.content_type.len);
        FUNC13(L, -3);
    }

    if (r->headers_out.content_length == NULL
        && r->headers_out.content_length_n >= 0)
    {
        extra++;
        FUNC10(L, "content-length");
        FUNC8(L, "%d", (int) r->headers_out.content_length_n);
        FUNC13(L, -3);
    }

    extra++;
    FUNC10(L, "connection");
    if (r->headers_out.status == NGX_HTTP_SWITCHING_PROTOCOLS) {
        FUNC10(L, "upgrade");

    } else if (r->keepalive) {
        FUNC10(L, "keep-alive");

    } else {
        FUNC10(L, "close");
    }
    FUNC13(L, -3);

    if (r->chunked) {
        extra++;
        FUNC10(L, "transfer-encoding");
        FUNC10(L, "chunked");
        FUNC13(L, -3);
    }
#endif

    if (max > 0 && count + extra > max) {
        truncated = 1;
        FUNC21(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua exceeding response header limit %d > %d",
                       count + extra, max);
        count = max - extra;
    }

    part = &r->headers_out.headers.part;
    header = part->elts;

    for (i = 0; /* void */; i++) {

        FUNC0("stack top: %d", FUNC4(L));

        if (i >= part->nelts) {
            if (part->next == NULL) {
                break;
            }

            part = part->next;
            header = part->elts;
            i = 0;
        }

        if (header[i].hash == 0) {
            continue;
        }

        if (raw) {
            FUNC11(L, (char *) header[i].key.data, header[i].key.len);

        } else {
            /* nginx does not even bother initializing output header entry's
             * "lowcase_key" field. so we cannot count on that at all. */
            if (header[i].key.len > lowcase_key_sz) {
                lowcase_key_sz = header[i].key.len * 2;

                /* we allocate via Lua's GC to prevent in-request
                 * leaks in the nginx request memory pools */
                lowcase_key = FUNC7(L, lowcase_key_sz);
                FUNC5(L, 1);
            }

            FUNC22(lowcase_key, header[i].key.data, header[i].key.len);
            FUNC11(L, (char *) lowcase_key, header[i].key.len);
        }

        /* stack: [udata] table key */

        FUNC11(L, (char *) header[i].value.data,
                        header[i].value.len); /* stack: [udata] table key
                                                 value */

        FUNC20(L, -3);

        FUNC21(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua response header: \"%V: %V\"",
                       &header[i].key, &header[i].value);

        if (--count <= 0) {
            break;
        }
    }  /* for */

    if (truncated) {
        FUNC10(L, "truncated");
        return 2;
    }

    return 1;
}