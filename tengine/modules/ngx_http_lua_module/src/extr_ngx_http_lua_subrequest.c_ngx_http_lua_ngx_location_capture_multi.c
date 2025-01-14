
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_9__ ;
typedef struct TYPE_53__ TYPE_7__ ;
typedef struct TYPE_52__ TYPE_6__ ;
typedef struct TYPE_51__ TYPE_5__ ;
typedef struct TYPE_50__ TYPE_4__ ;
typedef struct TYPE_49__ TYPE_42__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_11__ ;
typedef struct TYPE_44__ TYPE_10__ ;


typedef int uint8_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_48__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_50__ {int pool; TYPE_2__* main; int uri; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_51__ {TYPE_10__* buf; TYPE_42__* bufs; } ;
typedef TYPE_5__ ngx_http_request_body_t ;
struct TYPE_52__ {TYPE_7__* data; int handler; } ;
typedef TYPE_6__ ngx_http_post_subrequest_t ;
struct TYPE_53__ {int capture; int index; int no_abort; int vm_state; int body; int * last_body; TYPE_9__* pr_co_ctx; struct TYPE_53__* ctx; TYPE_9__* cur_co_ctx; } ;
typedef TYPE_7__ ngx_http_lua_post_subrequest_data_t ;
typedef TYPE_7__ ngx_http_lua_ctx_t ;
struct TYPE_54__ {int nsubreqs; scalar_t__ pending_subreqs; void* sr_flags; void* sr_bodies; void* sr_headers; void* sr_statuses; } ;
typedef TYPE_9__ ngx_http_lua_co_ctx_t ;
typedef int ngx_http_headers_out_t ;
struct TYPE_44__ {int * last; } ;
typedef TYPE_10__ ngx_buf_t ;
struct TYPE_45__ {scalar_t__ nelts; } ;
typedef TYPE_11__ ngx_array_t ;
typedef int lua_State ;
struct TYPE_49__ {int * next; TYPE_10__* buf; } ;
struct TYPE_47__ {int count; scalar_t__ stream; } ;
struct TYPE_46__ {int log; } ;







 int NGX_HTTP_GET ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 unsigned int NGX_HTTP_LUA_COPY_ALL_VARS ;
 unsigned int NGX_HTTP_LUA_SHARE_ALL_VARS ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int dd (char*,int,...) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_checktype (int *,int,int) ;
 int luaL_error (int *,char*,...) ;
 int luaL_typename (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 void* lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_remove (int *,int) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int lua_yield (int *,int ) ;
 size_t ngx_align (int,int) ;
 void* ngx_align_ptr (TYPE_7__*,int) ;
 TYPE_42__* ngx_alloc_chain_link (int ) ;
 int ngx_array_destroy (TYPE_11__*) ;
 void* ngx_copy (int *,int *,size_t) ;
 TYPE_10__* ngx_create_temp_buf (int ,size_t) ;
 TYPE_7__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_http_lua_adjust_subrequest (TYPE_4__*,int,int,TYPE_5__*,unsigned int,TYPE_11__*) ;
 int ngx_http_lua_assert (int) ;
 int ngx_http_lua_cancel_subreq (TYPE_4__*) ;
 int ngx_http_lua_check_context (int *,TYPE_7__*,int) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_init_ctx (TYPE_4__*,TYPE_7__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_ngx_set_ctx_helper (int *,TYPE_4__*,TYPE_7__*,int) ;
 int ngx_http_lua_post_subrequest ;
 int ngx_http_lua_process_args_option (TYPE_4__*,int *,int,TYPE_3__*) ;
 int ngx_http_lua_process_vars_option (TYPE_4__*,int *,int,TYPE_11__**) ;
 int ngx_http_lua_subrequest (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_4__**,TYPE_6__*,int ) ;
 int ngx_http_parse_unsafe_uri (TYPE_4__*,TYPE_3__*,TYPE_3__*,int*) ;
 int ngx_http_set_ctx (TYPE_4__*,TYPE_7__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 int ngx_memcpy (int *,int *,size_t) ;
 int ngx_memzero (TYPE_7__*,int) ;
 void* ngx_palloc (int ,size_t) ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_str_null (TYPE_3__*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_location_capture_multi(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_request_t *sr = ((void*)0);
    ngx_http_post_subrequest_t *psr;
    ngx_http_lua_ctx_t *sr_ctx;
    ngx_http_lua_ctx_t *ctx;
    ngx_array_t *extra_vars;
    ngx_str_t uri;
    ngx_str_t args;
    ngx_str_t extra_args;
    ngx_uint_t flags;
    u_char *p;
    u_char *q;
    size_t len;
    size_t nargs;
    int rc;
    int n;
    int always_forward_body = 0;
    ngx_uint_t method;
    ngx_http_request_body_t *body;
    int type;
    ngx_buf_t *b;
    unsigned vars_action;
    ngx_uint_t nsubreqs;
    ngx_uint_t index;
    size_t sr_statuses_len;
    size_t sr_headers_len;
    size_t sr_bodies_len;
    size_t sr_flags_len;
    size_t ofs1, ofs2;
    unsigned custom_ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_http_lua_post_subrequest_data_t *psr_data;

    n = lua_gettop(L);
    if (n != 1) {
        return luaL_error(L, "only one argument is expected, but got %d", n);
    }

    luaL_checktype(L, 1, 128);

    nsubreqs = lua_objlen(L, 1);
    if (nsubreqs == 0) {
        return luaL_error(L, "at least one subrequest should be specified");
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }







    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    coctx = ctx->cur_co_ctx;
    if (coctx == ((void*)0)) {
        return luaL_error(L, "no co ctx found");
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua location capture, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    sr_statuses_len = nsubreqs * sizeof(ngx_int_t);
    sr_headers_len = nsubreqs * sizeof(ngx_http_headers_out_t *);
    sr_bodies_len = nsubreqs * sizeof(ngx_str_t);
    sr_flags_len = nsubreqs * sizeof(uint8_t);

    p = ngx_pcalloc(r->pool, sr_statuses_len + sr_headers_len +
                    sr_bodies_len + sr_flags_len);

    if (p == ((void*)0)) {
        return luaL_error(L, "no memory");
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

    extra_vars = ((void*)0);

    for (index = 0; index < nsubreqs; index++) {
        coctx->pending_subreqs++;

        lua_rawgeti(L, 1, index + 1);
        if (lua_isnil(L, -1)) {
            return luaL_error(L, "only array-like tables are allowed");
        }

        dd("queries query: top %d", lua_gettop(L));

        if (lua_type(L, -1) != 128) {
            return luaL_error(L, "the query argument %d is not a table, "
                              "but a %s",
                              index, lua_typename(L, lua_type(L, -1)));
        }

        nargs = lua_objlen(L, -1);

        if (nargs != 1 && nargs != 2) {
            return luaL_error(L, "query argument %d expecting one or "
                              "two arguments", index);
        }

        lua_rawgeti(L, 2, 1);

        dd("queries query uri: %d", lua_gettop(L));

        dd("first arg in first query: %s", lua_typename(L, lua_type(L, -1)));

        body = ((void*)0);

        ngx_str_null(&extra_args);

        if (extra_vars != ((void*)0)) {

            extra_vars->nelts = 0;
        }

        vars_action = 0;

        custom_ctx = 0;

        if (nargs == 2) {


            lua_rawgeti(L, 2, 2);

            dd("queries query uri opts: %d", lua_gettop(L));

            if (lua_type(L, 4) != 128) {
                return luaL_error(L, "expecting table as the 2nd argument for "
                                  "subrequest %d, but got %s", index,
                                  luaL_typename(L, 4));
            }

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "args");

            type = lua_type(L, -1);

            switch (type) {
            case 128:
                ngx_http_lua_process_args_option(r, L, -1, &extra_args);
                break;

            case 131:

                break;

            case 130:
            case 129:
                extra_args.data = (u_char *) lua_tolstring(L, -1, &len);
                extra_args.len = len;

                break;

            default:
                return luaL_error(L, "Bad args option value");
            }

            lua_pop(L, 1);

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "vars");

            switch (lua_type(L, -1)) {
            case 128:
                ngx_http_lua_process_vars_option(r, L, -1, &extra_vars);

                dd("post process vars top: %d", lua_gettop(L));
                break;

            case 131:

                break;

            default:
                return luaL_error(L, "Bad vars option value");
            }

            lua_pop(L, 1);

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "share_all_vars");

            switch (lua_type(L, -1)) {
            case 131:

                break;

            case 132:
                if (lua_toboolean(L, -1)) {
                    vars_action |= NGX_HTTP_LUA_SHARE_ALL_VARS;
                }
                break;

            default:
                return luaL_error(L, "Bad share_all_vars option value");
            }

            lua_pop(L, 1);

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "copy_all_vars");

            switch (lua_type(L, -1)) {
            case 131:

                break;

            case 132:
                if (lua_toboolean(L, -1)) {
                    vars_action |= NGX_HTTP_LUA_COPY_ALL_VARS;
                }
                break;

            default:
                return luaL_error(L, "Bad copy_all_vars option value");
            }

            lua_pop(L, 1);

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "always_forward_body");
            always_forward_body = lua_toboolean(L, -1);
            lua_pop(L, 1);

            dd("always forward body: %d", always_forward_body);



            lua_getfield(L, 4, "method");

            type = lua_type(L, -1);

            if (type == 131) {
                method = NGX_HTTP_GET;

            } else {
                if (type != 130) {
                    return luaL_error(L, "Bad http request method");
                }

                method = (ngx_uint_t) lua_tonumber(L, -1);
            }

            lua_pop(L, 1);

            dd("queries query uri opts: %d", lua_gettop(L));



            lua_getfield(L, 4, "ctx");

            type = lua_type(L, -1);

            if (type != 131) {
                if (type != 128) {
                    return luaL_error(L, "Bad ctx option value type %s, "
                                      "expected a Lua table",
                                      lua_typename(L, type));
                }

                custom_ctx = 1;

            } else {
                lua_pop(L, 1);
            }

            dd("queries query uri opts ctx?: %d", lua_gettop(L));



            lua_getfield(L, 4, "body");

            type = lua_type(L, -1);

            if (type != 131) {
                if (type != 129 && type != 130) {
                    return luaL_error(L, "Bad http request body");
                }

                body = ngx_pcalloc(r->pool, sizeof(ngx_http_request_body_t));

                if (body == ((void*)0)) {
                    return luaL_error(L, "no memory");
                }

                q = (u_char *) lua_tolstring(L, -1, &len);

                dd("request body: [%.*s]", (int) len, q);

                if (len) {
                    b = ngx_create_temp_buf(r->pool, len);
                    if (b == ((void*)0)) {
                        return luaL_error(L, "no memory");
                    }

                    b->last = ngx_copy(b->last, q, len);

                    body->bufs = ngx_alloc_chain_link(r->pool);
                    if (body->bufs == ((void*)0)) {
                        return luaL_error(L, "no memory");
                    }

                    body->bufs->buf = b;
                    body->bufs->next = ((void*)0);

                    body->buf = b;
                }
            }

            lua_pop(L, 1);



            lua_remove(L, 4);



            dd("queries query uri ctx?: %d", lua_gettop(L));

        } else {
            method = NGX_HTTP_GET;
        }



        p = (u_char *) luaL_checklstring(L, 3, &len);

        uri.data = ngx_palloc(r->pool, len);
        if (uri.data == ((void*)0)) {
            return luaL_error(L, "memory allocation error");
        }

        ngx_memcpy(uri.data, p, len);

        uri.len = len;

        ngx_str_null(&args);

        flags = 0;

        rc = ngx_http_parse_unsafe_uri(r, &uri, &args, &flags);
        if (rc != NGX_OK) {
            dd("rc = %d", (int) rc);

            return luaL_error(L, "unsafe uri in argument #1: %s", p);
        }

        if (args.len == 0) {
            if (extra_args.len) {
                p = ngx_palloc(r->pool, extra_args.len);
                if (p == ((void*)0)) {
                    return luaL_error(L, "no memory");
                }

                ngx_memcpy(p, extra_args.data, extra_args.len);

                args.data = p;
                args.len = extra_args.len;
            }

        } else if (extra_args.len) {

            len = args.len + (sizeof("&") - 1) + extra_args.len;

            p = ngx_palloc(r->pool, len);
            if (p == ((void*)0)) {
                return luaL_error(L, "no memory");
            }

            q = ngx_copy(p, args.data, args.len);
            *q++ = '&';
            ngx_memcpy(q, extra_args.data, extra_args.len);

            args.data = p;
            args.len = len;
        }

        ofs1 = ngx_align(sizeof(ngx_http_post_subrequest_t), sizeof(void *));
        ofs2 = ngx_align(sizeof(ngx_http_lua_ctx_t), sizeof(void *));

        p = ngx_palloc(r->pool, ofs1 + ofs2
                       + sizeof(ngx_http_lua_post_subrequest_data_t));
        if (p == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

        psr = (ngx_http_post_subrequest_t *) p;

        p += ofs1;

        sr_ctx = (ngx_http_lua_ctx_t *) p;

        ngx_http_lua_assert((void *) sr_ctx == ngx_align_ptr(sr_ctx,
                                                             sizeof(void *)));

        p += ofs2;

        psr_data = (ngx_http_lua_post_subrequest_data_t *) p;

        ngx_http_lua_assert((void *) psr_data == ngx_align_ptr(psr_data,
                                                               sizeof(void *)));

        ngx_memzero(sr_ctx, sizeof(ngx_http_lua_ctx_t));







        psr_data->ctx = sr_ctx;
        psr_data->pr_co_ctx = coctx;

        psr->handler = ngx_http_lua_post_subrequest;
        psr->data = psr_data;

        rc = ngx_http_lua_subrequest(r, &uri, &args, &sr, psr, 0);

        if (rc != NGX_OK) {
            return luaL_error(L, "failed to issue subrequest: %d", (int) rc);
        }

        ngx_http_lua_init_ctx(sr, sr_ctx);

        sr_ctx->capture = 1;
        sr_ctx->index = index;
        sr_ctx->last_body = &sr_ctx->body;
        sr_ctx->vm_state = ctx->vm_state;

        ngx_http_set_ctx(sr, sr_ctx, ngx_http_lua_module);

        rc = ngx_http_lua_adjust_subrequest(sr, method, always_forward_body,
                                            body, vars_action, extra_vars);

        if (rc != NGX_OK) {
            ngx_http_lua_cancel_subreq(sr);
            return luaL_error(L, "failed to adjust the subrequest: %d",
                              (int) rc);
        }

        dd("queries query uri opts ctx? %d", lua_gettop(L));



        if (custom_ctx) {
            ngx_http_lua_ngx_set_ctx_helper(L, sr, sr_ctx, -1);
            lua_pop(L, 3);

        } else {
            lua_pop(L, 2);
        }


    }

    if (extra_vars) {
        ngx_array_destroy(extra_vars);
    }

    ctx->no_abort = 1;

    return lua_yield(L, 0);
}
