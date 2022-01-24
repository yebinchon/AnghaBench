#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_31__ {int len; scalar_t__ data; } ;
struct TYPE_30__ {int len; scalar_t__ data; } ;
struct TYPE_32__ {scalar_t__ hash; TYPE_8__ value; TYPE_7__ key; } ;
typedef  TYPE_9__ ngx_table_elt_t ;
struct TYPE_18__ {int len; scalar_t__ data; } ;
typedef  TYPE_10__ ngx_str_t ;
struct TYPE_19__ {size_t nelts; TYPE_9__* elts; struct TYPE_19__* next; } ;
typedef  TYPE_11__ ngx_list_part_t ;
struct TYPE_28__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct TYPE_20__ {int /*<<< orphan*/  pool; TYPE_5__ uri; TYPE_4__* connection; } ;
typedef  TYPE_12__ ngx_http_request_t ;
struct TYPE_21__ {TYPE_14__* cur_co_ctx; } ;
typedef  TYPE_13__ ngx_http_lua_ctx_t ;
struct TYPE_22__ {size_t nsubreqs; int* sr_flags; TYPE_15__** sr_headers; TYPE_10__* sr_bodies; int /*<<< orphan*/ * sr_statuses; scalar_t__ pending_subreqs; int /*<<< orphan*/ * co; } ;
typedef  TYPE_14__ ngx_http_lua_co_ctx_t ;
struct TYPE_24__ {int len; scalar_t__ data; } ;
struct TYPE_29__ {TYPE_11__ part; } ;
struct TYPE_23__ {scalar_t__ content_length_n; int last_modified_time; scalar_t__ status; int /*<<< orphan*/ * last_modified; TYPE_3__* location; int /*<<< orphan*/ * content_length; TYPE_1__ content_type; TYPE_6__ headers; } ;
typedef  TYPE_15__ ngx_http_headers_out_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_27__ {int /*<<< orphan*/  log; } ;
struct TYPE_25__ {int len; scalar_t__ data; } ;
struct TYPE_26__ {TYPE_2__ value; } ;

/* Variables and functions */
 int NGX_HTTP_LUA_SUBREQ_TRUNCATED ; 
 scalar_t__ NGX_HTTP_NOT_MODIFIED ; 
 scalar_t__ NGX_HTTP_NO_CONTENT ; 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_HTTP_PARTIAL_CONTENT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC20(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_uint_t                   i, count;
    ngx_uint_t                   index;
    lua_State                   *co;
    ngx_str_t                   *body_str;
    ngx_table_elt_t             *header;
    ngx_list_part_t             *part;
    ngx_http_headers_out_t      *sr_headers;
    ngx_http_lua_co_ctx_t       *coctx;

    u_char                  buf[sizeof("Mon, 28 Sep 1970 06:00:00 GMT") - 1];

    FUNC18(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua handle subrequest responses");

    coctx = ctx->cur_co_ctx;
    co = coctx->co;

    for (index = 0; index < coctx->nsubreqs; index++) {
        FUNC0("summary: reqs %d, subquery %d, pending %d, req %.*s",
           (int) coctx->nsubreqs,
           (int) index,
           (int) coctx->pending_subreqs,
           (int) r->uri.len, r->uri.data);

        /*  {{{ construct ret value */
        FUNC1(co, 0 /* narr */, 4 /* nrec */);

        /*  copy captured status */
        FUNC8(co, coctx->sr_statuses[index]);
        FUNC16(co, -2, "status");

        FUNC0("captured subrequest flags: %d", (int) coctx->sr_flags[index]);

        /* set truncated flag if truncation happens */
        if (coctx->sr_flags[index] & NGX_HTTP_LUA_SUBREQ_TRUNCATED) {
            FUNC7(co, 1);
            FUNC16(co, -2, "truncated");

        } else {
            FUNC7(co, 0);
            FUNC16(co, -2, "truncated");
        }

        /*  copy captured body */

        body_str = &coctx->sr_bodies[index];

        FUNC10(co, (char *) body_str->data, body_str->len);
        FUNC16(co, -2, "body");

        if (body_str->data) {
            FUNC0("free body buffer ASAP");
            FUNC19(r->pool, body_str->data);
        }

        /* copy captured headers */

        sr_headers = coctx->sr_headers[index];

        part = &sr_headers->headers.part;
        count = part->nelts;
        while (part->next) {
            part = part->next;
            count += part->nelts;
        }

        FUNC1(co, 0, count + 5); /* res.header */

        FUNC0("saving subrequest response headers");

        part = &sr_headers->headers.part;
        header = part->elts;

        for (i = 0; /* void */; i++) {

            if (i >= part->nelts) {
                if (part->next == NULL) {
                    break;
                }

                part = part->next;
                header = part->elts;
                i = 0;
            }

            FUNC0("checking sr header %.*s", (int) header[i].key.len,
               header[i].key.data);

#if 1
            if (header[i].hash == 0) {
                continue;
            }
#endif

            header[i].hash = 0;

            FUNC0("pushing sr header %.*s", (int) header[i].key.len,
               header[i].key.data);

            FUNC10(co, (char *) header[i].key.data,
                            header[i].key.len); /* header key */
            FUNC12(co, -1); /* stack: table key key */

            /* check if header already exists */
            FUNC13(co, -3); /* stack: table key value */

            if (FUNC3(co, -1)) {
                FUNC6(co, 1); /* stack: table key */

                FUNC10(co, (char *) header[i].value.data,
                                header[i].value.len);
                    /* stack: table key value */

                FUNC14(co, -3); /* stack: table */

            } else {

                if (!FUNC4(co, -1)) { /* already inserted one value */
                    FUNC1(co, 4, 0);
                        /* stack: table key value table */

                    FUNC2(co, -2); /* stack: table key table value */
                    FUNC15(co, -2, 1); /* stack: table key table */

                    FUNC10(co, (char *) header[i].value.data,
                                    header[i].value.len);
                        /* stack: table key table value */

                    FUNC15(co, -2, FUNC5(co, -2) + 1);
                        /* stack: table key table */

                    FUNC14(co, -3); /* stack: table */

                } else {
                    FUNC10(co, (char *) header[i].value.data,
                                    header[i].value.len);
                        /* stack: table key table value */

                    FUNC15(co, -2, FUNC5(co, -2) + 1);
                        /* stack: table key table */

                    FUNC6(co, 2); /* stack: table */
                }
            }
        }

        if (sr_headers->content_type.len) {
            FUNC9(co, "Content-Type"); /* header key */
            FUNC10(co, (char *) sr_headers->content_type.data,
                            sr_headers->content_type.len); /* head key value */
            FUNC14(co, -3); /* head */
        }

        if (sr_headers->content_length == NULL
            && sr_headers->content_length_n >= 0)
        {
            FUNC9(co, "Content-Length"); /* header key */

            FUNC11(co, (lua_Number) sr_headers->content_length_n);
                /* head key value */

            FUNC14(co, -3); /* head */
        }

        /* to work-around an issue in ngx_http_static_module
         * (github issue #41) */
        if (sr_headers->location && sr_headers->location->value.len) {
            FUNC9(co, "Location"); /* header key */
            FUNC10(co, (char *) sr_headers->location->value.data,
                            sr_headers->location->value.len);
            /* head key value */
            FUNC14(co, -3); /* head */
        }

        if (sr_headers->last_modified_time != -1) {
            if (sr_headers->status != NGX_HTTP_OK
                && sr_headers->status != NGX_HTTP_PARTIAL_CONTENT
                && sr_headers->status != NGX_HTTP_NOT_MODIFIED
                && sr_headers->status != NGX_HTTP_NO_CONTENT)
            {
                sr_headers->last_modified_time = -1;
                sr_headers->last_modified = NULL;
            }
        }

        if (sr_headers->last_modified == NULL
            && sr_headers->last_modified_time != -1)
        {
            (void) FUNC17(buf, sr_headers->last_modified_time);

            FUNC9(co, "Last-Modified"); /* header key */
            FUNC10(co, (char *) buf, sizeof(buf)); /* head key value */
            FUNC14(co, -3); /* head */
        }

        FUNC16(co, -2, "header");

        /*  }}} */
    }
}