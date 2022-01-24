#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_54__   TYPE_9__ ;
typedef  struct TYPE_53__   TYPE_7__ ;
typedef  struct TYPE_52__   TYPE_6__ ;
typedef  struct TYPE_51__   TYPE_5__ ;
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_42__ ;
typedef  struct TYPE_48__   TYPE_3__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_1__ ;
typedef  struct TYPE_45__   TYPE_11__ ;
typedef  struct TYPE_44__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_48__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_50__ {int /*<<< orphan*/  pool; TYPE_2__* main; int /*<<< orphan*/  uri; TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_51__ {TYPE_10__* buf; TYPE_42__* bufs; } ;
typedef  TYPE_5__ ngx_http_request_body_t ;
struct TYPE_52__ {TYPE_7__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_6__ ngx_http_post_subrequest_t ;
struct TYPE_53__ {int capture; int index; int no_abort; int /*<<< orphan*/  vm_state; int /*<<< orphan*/  body; int /*<<< orphan*/ * last_body; TYPE_9__* pr_co_ctx; struct TYPE_53__* ctx; TYPE_9__* cur_co_ctx; } ;
typedef  TYPE_7__ ngx_http_lua_post_subrequest_data_t ;
typedef  TYPE_7__ ngx_http_lua_ctx_t ;
struct TYPE_54__ {int nsubreqs; scalar_t__ pending_subreqs; void* sr_flags; void* sr_bodies; void* sr_headers; void* sr_statuses; } ;
typedef  TYPE_9__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_headers_out_t ;
struct TYPE_44__ {int /*<<< orphan*/ * last; } ;
typedef  TYPE_10__ ngx_buf_t ;
struct TYPE_45__ {scalar_t__ nelts; } ;
typedef  TYPE_11__ ngx_array_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_49__ {int /*<<< orphan*/ * next; TYPE_10__* buf; } ;
struct TYPE_47__ {int /*<<< orphan*/  count; scalar_t__ stream; } ;
struct TYPE_46__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  LUA_TBOOLEAN 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int NGX_HTTP_GET ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 unsigned int NGX_HTTP_LUA_COPY_ALL_VARS ; 
 unsigned int NGX_HTTP_LUA_SHARE_ALL_VARS ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC18 (int,int) ; 
 void* FUNC19 (TYPE_7__*,int) ; 
 TYPE_42__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_11__*) ; 
 void* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_10__* FUNC23 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_7__* FUNC24 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_4__*,int,int,TYPE_5__*,unsigned int,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,TYPE_7__*,int) ; 
 TYPE_4__* FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  ngx_http_lua_post_subrequest ; 
 int /*<<< orphan*/  FUNC32 (TYPE_4__*,int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_4__*,int /*<<< orphan*/ *,int,TYPE_11__**) ; 
 int FUNC34 (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_4__**,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC35 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_7__*,int) ; 
 void* FUNC40 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC41 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC43(lua_State *L)
{
    ngx_http_request_t              *r;
    ngx_http_request_t              *sr = NULL; /* subrequest object */
    ngx_http_post_subrequest_t      *psr;
    ngx_http_lua_ctx_t              *sr_ctx;
    ngx_http_lua_ctx_t              *ctx;
    ngx_array_t                     *extra_vars;
    ngx_str_t                        uri;
    ngx_str_t                        args;
    ngx_str_t                        extra_args;
    ngx_uint_t                       flags;
    u_char                          *p;
    u_char                          *q;
    size_t                           len;
    size_t                           nargs;
    int                              rc;
    int                              n;
    int                              always_forward_body = 0;
    ngx_uint_t                       method;
    ngx_http_request_body_t         *body;
    int                              type;
    ngx_buf_t                       *b;
    unsigned                         vars_action;
    ngx_uint_t                       nsubreqs;
    ngx_uint_t                       index;
    size_t                           sr_statuses_len;
    size_t                           sr_headers_len;
    size_t                           sr_bodies_len;
    size_t                           sr_flags_len;
    size_t                           ofs1, ofs2;
    unsigned                         custom_ctx;
    ngx_http_lua_co_ctx_t           *coctx;

    ngx_http_lua_post_subrequest_data_t      *psr_data;

    n = FUNC6(L);
    if (n != 1) {
        return FUNC3(L, "only one argument is expected, but got %d", n);
    }

    FUNC2(L, 1, LUA_TTABLE);

    nsubreqs = FUNC8(L, 1);
    if (nsubreqs == 0) {
        return FUNC3(L, "at least one subrequest should be specified");
    }

    r = FUNC29(L);
    if (r == NULL) {
        return FUNC3(L, "no request object found");
    }

#if (NGX_HTTP_V2)
    if (r->main->stream) {
        return luaL_error(L, "http2 requests not supported yet");
    }
#endif

    ctx = FUNC24(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC3(L, "no ctx found");
    }

    FUNC28(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    coctx = ctx->cur_co_ctx;
    if (coctx == NULL) {
        return FUNC3(L, "no co ctx found");
    }

    FUNC37(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua location capture, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    sr_statuses_len = nsubreqs * sizeof(ngx_int_t);
    sr_headers_len  = nsubreqs * sizeof(ngx_http_headers_out_t *);
    sr_bodies_len   = nsubreqs * sizeof(ngx_str_t);
    sr_flags_len    = nsubreqs * sizeof(uint8_t);

    p = FUNC41(r->pool, sr_statuses_len + sr_headers_len +
                    sr_bodies_len + sr_flags_len);

    if (p == NULL) {
        return FUNC3(L, "no memory");
    }

    coctx->sr_statuses = (void *) p;
    p += sr_statuses_len;

    coctx->sr_headers = (void *) p;
    p += sr_headers_len;

    coctx->sr_bodies = (void *) p;
    p += sr_bodies_len;

    coctx->sr_flags = (void *) p;

    coctx->nsubreqs = nsubreqs;

    coctx->pending_subreqs = 0;

    extra_vars = NULL;

    for (index = 0; index < nsubreqs; index++) {
        coctx->pending_subreqs++;

        FUNC10(L, 1, index + 1);
        if (FUNC7(L, -1)) {
            return FUNC3(L, "only array-like tables are allowed");
        }

        FUNC0("queries query: top %d", FUNC6(L));

        if (FUNC15(L, -1) != LUA_TTABLE) {
            return FUNC3(L, "the query argument %d is not a table, "
                              "but a %s",
                              index, FUNC16(L, FUNC15(L, -1)));
        }

        nargs = FUNC8(L, -1);

        if (nargs != 1 && nargs != 2) {
            return FUNC3(L, "query argument %d expecting one or "
                              "two arguments", index);
        }

        FUNC10(L, 2, 1); /* queries query uri */

        FUNC0("queries query uri: %d", FUNC6(L));

        FUNC0("first arg in first query: %s", FUNC16(L, FUNC15(L, -1)));

        body = NULL;

        FUNC42(&extra_args);

        if (extra_vars != NULL) {
            /* flush out existing elements in the array */
            extra_vars->nelts = 0;
        }

        vars_action = 0;

        custom_ctx = 0;

        if (nargs == 2) {
            /* check out the options table */

            FUNC10(L, 2, 2); /* queries query uri opts */

            FUNC0("queries query uri opts: %d", FUNC6(L));

            if (FUNC15(L, 4) != LUA_TTABLE) {
                return FUNC3(L, "expecting table as the 2nd argument for "
                                  "subrequest %d, but got %s", index,
                                  FUNC4(L, 4));
            }

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the args option */

            FUNC5(L, 4, "args");

            type = FUNC15(L, -1);

            switch (type) {
            case LUA_TTABLE:
                FUNC32(r, L, -1, &extra_args);
                break;

            case LUA_TNIL:
                /* do nothing */
                break;

            case LUA_TNUMBER:
            case LUA_TSTRING:
                extra_args.data = (u_char *) FUNC13(L, -1, &len);
                extra_args.len = len;

                break;

            default:
                return FUNC3(L, "Bad args option value");
            }

            FUNC9(L, 1);

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the vars option */

            FUNC5(L, 4, "vars");

            switch (FUNC15(L, -1)) {
            case LUA_TTABLE:
                FUNC33(r, L, -1, &extra_vars);

                FUNC0("post process vars top: %d", FUNC6(L));
                break;

            case LUA_TNIL:
                /* do nothing */
                break;

            default:
                return FUNC3(L, "Bad vars option value");
            }

            FUNC9(L, 1);

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the share_all_vars option */

            FUNC5(L, 4, "share_all_vars");

            switch (FUNC15(L, -1)) {
            case LUA_TNIL:
                /* do nothing */
                break;

            case LUA_TBOOLEAN:
                if (FUNC12(L, -1)) {
                    vars_action |= NGX_HTTP_LUA_SHARE_ALL_VARS;
                }
                break;

            default:
                return FUNC3(L, "Bad share_all_vars option value");
            }

            FUNC9(L, 1);

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the copy_all_vars option */

            FUNC5(L, 4, "copy_all_vars");

            switch (FUNC15(L, -1)) {
            case LUA_TNIL:
                /* do nothing */
                break;

            case LUA_TBOOLEAN:
                if (FUNC12(L, -1)) {
                    vars_action |= NGX_HTTP_LUA_COPY_ALL_VARS;
                }
                break;

            default:
                return FUNC3(L, "Bad copy_all_vars option value");
            }

            FUNC9(L, 1);

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the "forward_body" option */

            FUNC5(L, 4, "always_forward_body");
            always_forward_body = FUNC12(L, -1);
            FUNC9(L, 1);

            FUNC0("always forward body: %d", always_forward_body);

            /* check the "method" option */

            FUNC5(L, 4, "method");

            type = FUNC15(L, -1);

            if (type == LUA_TNIL) {
                method = NGX_HTTP_GET;

            } else {
                if (type != LUA_TNUMBER) {
                    return FUNC3(L, "Bad http request method");
                }

                method = (ngx_uint_t) FUNC14(L, -1);
            }

            FUNC9(L, 1);

            FUNC0("queries query uri opts: %d", FUNC6(L));

            /* check the "ctx" option */

            FUNC5(L, 4, "ctx");

            type = FUNC15(L, -1);

            if (type != LUA_TNIL) {
                if (type != LUA_TTABLE) {
                    return FUNC3(L, "Bad ctx option value type %s, "
                                      "expected a Lua table",
                                      FUNC16(L, type));
                }

                custom_ctx = 1;

            } else {
                FUNC9(L, 1);
            }

            FUNC0("queries query uri opts ctx?: %d", FUNC6(L));

            /* check the "body" option */

            FUNC5(L, 4, "body");

            type = FUNC15(L, -1);

            if (type != LUA_TNIL) {
                if (type != LUA_TSTRING && type != LUA_TNUMBER) {
                    return FUNC3(L, "Bad http request body");
                }

                body = FUNC41(r->pool, sizeof(ngx_http_request_body_t));

                if (body == NULL) {
                    return FUNC3(L, "no memory");
                }

                q = (u_char *) FUNC13(L, -1, &len);

                FUNC0("request body: [%.*s]", (int) len, q);

                if (len) {
                    b = FUNC23(r->pool, len);
                    if (b == NULL) {
                        return FUNC3(L, "no memory");
                    }

                    b->last = FUNC22(b->last, q, len);

                    body->bufs = FUNC20(r->pool);
                    if (body->bufs == NULL) {
                        return FUNC3(L, "no memory");
                    }

                    body->bufs->buf = b;
                    body->bufs->next = NULL;

                    body->buf = b;
                }
            }

            FUNC9(L, 1); /* pop the body */

            /* stack: queries query uri opts ctx? */

            FUNC11(L, 4);

            /* stack: queries query uri ctx? */

            FUNC0("queries query uri ctx?: %d", FUNC6(L));

        } else {
            method = NGX_HTTP_GET;
        }

        /* stack: queries query uri ctx? */

        p = (u_char *) FUNC1(L, 3, &len);

        uri.data = FUNC40(r->pool, len);
        if (uri.data == NULL) {
            return FUNC3(L, "memory allocation error");
        }

        FUNC38(uri.data, p, len);

        uri.len = len;

        FUNC42(&args);

        flags = 0;

        rc = FUNC35(r, &uri, &args, &flags);
        if (rc != NGX_OK) {
            FUNC0("rc = %d", (int) rc);

            return FUNC3(L, "unsafe uri in argument #1: %s", p);
        }

        if (args.len == 0) {
            if (extra_args.len) {
                p = FUNC40(r->pool, extra_args.len);
                if (p == NULL) {
                    return FUNC3(L, "no memory");
                }

                FUNC38(p, extra_args.data, extra_args.len);

                args.data = p;
                args.len = extra_args.len;
            }

        } else if (extra_args.len) {
            /* concatenate the two parts of args together */
            len = args.len + (sizeof("&") - 1) + extra_args.len;

            p = FUNC40(r->pool, len);
            if (p == NULL) {
                return FUNC3(L, "no memory");
            }

            q = FUNC22(p, args.data, args.len);
            *q++ = '&';
            FUNC38(q, extra_args.data, extra_args.len);

            args.data = p;
            args.len = len;
        }

        ofs1 = FUNC18(sizeof(ngx_http_post_subrequest_t), sizeof(void *));
        ofs2 = FUNC18(sizeof(ngx_http_lua_ctx_t), sizeof(void *));

        p = FUNC40(r->pool, ofs1 + ofs2
                       + sizeof(ngx_http_lua_post_subrequest_data_t));
        if (p == NULL) {
            return FUNC3(L, "no memory");
        }

        psr = (ngx_http_post_subrequest_t *) p;

        p += ofs1;

        sr_ctx = (ngx_http_lua_ctx_t *) p;

        FUNC26((void *) sr_ctx == FUNC19(sr_ctx,
                                                             sizeof(void *)));

        p += ofs2;

        psr_data = (ngx_http_lua_post_subrequest_data_t *) p;

        FUNC26((void *) psr_data == FUNC19(psr_data,
                                                               sizeof(void *)));

        FUNC39(sr_ctx, sizeof(ngx_http_lua_ctx_t));

        /* set by ngx_memzero:
         *      sr_ctx->run_post_subrequest = 0
         *      sr_ctx->free = NULL
         *      sr_ctx->body = NULL
         */

        psr_data->ctx = sr_ctx;
        psr_data->pr_co_ctx = coctx;

        psr->handler = ngx_http_lua_post_subrequest;
        psr->data = psr_data;

        rc = FUNC34(r, &uri, &args, &sr, psr, 0);

        if (rc != NGX_OK) {
            return FUNC3(L, "failed to issue subrequest: %d", (int) rc);
        }

        FUNC30(sr, sr_ctx);

        sr_ctx->capture = 1;
        sr_ctx->index = index;
        sr_ctx->last_body = &sr_ctx->body;
        sr_ctx->vm_state = ctx->vm_state;

        FUNC36(sr, sr_ctx, ngx_http_lua_module);

        rc = FUNC25(sr, method, always_forward_body,
                                            body, vars_action, extra_vars);

        if (rc != NGX_OK) {
            FUNC27(sr);
            return FUNC3(L, "failed to adjust the subrequest: %d",
                              (int) rc);
        }

        FUNC0("queries query uri opts ctx? %d", FUNC6(L));

        /* stack: queries query uri ctx? */

        if (custom_ctx) {
            FUNC31(L, sr, sr_ctx, -1);
            FUNC9(L, 3);

        } else {
            FUNC9(L, 2);
        }

        /* stack: queries */
    }

    if (extra_vars) {
        FUNC21(extra_vars);
    }

    ctx->no_abort = 1;

    return FUNC17(L, 0);
}