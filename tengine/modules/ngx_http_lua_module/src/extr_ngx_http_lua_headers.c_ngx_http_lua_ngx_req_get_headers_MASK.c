#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_15__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_16__ {TYPE_5__ value; TYPE_4__ key; scalar_t__ lowcase_key; } ;
typedef  TYPE_6__ ngx_table_elt_t ;
struct TYPE_17__ {int nelts; TYPE_6__* elts; struct TYPE_17__* next; } ;
typedef  TYPE_7__ ngx_list_part_t ;
struct TYPE_11__ {TYPE_7__ part; } ;
struct TYPE_12__ {TYPE_1__ headers; } ;
struct TYPE_18__ {TYPE_3__* connection; TYPE_2__ headers_in; } ;
typedef  TYPE_8__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int NGX_HTTP_LUA_MAX_HEADERS ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  headers_metatable_key ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 TYPE_8__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC17(lua_State *L)
{
    ngx_list_part_t              *part;
    ngx_table_elt_t              *header;
    ngx_http_request_t           *r;
    ngx_uint_t                    i;
    int                           n;
    int                           max;
    int                           raw = 0;
    int                           count = 0;
    int                           truncated = 0;

    n = FUNC4(L);

    if (n >= 1) {
        if (FUNC5(L, 1)) {
            max = NGX_HTTP_LUA_MAX_HEADERS;

        } else {
            max = FUNC1(L, 1);
        }

        if (n >= 2) {
            raw = FUNC11(L, 2);
        }

    } else {
        max = NGX_HTTP_LUA_MAX_HEADERS;
    }

    r = FUNC13(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    FUNC12(L, r);

    part = &r->headers_in.headers.part;
    count = part->nelts;
    while (part->next != NULL) {
        part = part->next;
        count += part->nelts;
    }

    if (max > 0 && count > max) {
        FUNC16(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua exceeding request header limit %d > %d", count,
                       max);
        count = max;
        truncated = 1;
    }

    FUNC3(L, 0, count);

    if (!raw) {
        FUNC6(L, FUNC14(
                              headers_metatable_key));
        FUNC9(L, LUA_REGISTRYINDEX);
        FUNC10(L, -2);
    }

    part = &r->headers_in.headers.part;
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

        if (raw) {
            FUNC8(L, (char *) header[i].key.data, header[i].key.len);

        } else {
            FUNC8(L, (char *) header[i].lowcase_key,
                            header[i].key.len);
        }

        /* stack: table key */

        FUNC8(L, (char *) header[i].value.data,
                        header[i].value.len); /* stack: table key value */

        FUNC15(L, -3);

        FUNC16(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua request header: \"%V: %V\"",
                       &header[i].key, &header[i].value);

        if (--count <= 0) {
            break;
        }
    }  /* for */

    if (truncated) {
        FUNC7(L, "truncated");
        return 2;
    }

    return 1;
}