
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_15__ {struct TYPE_15__* main; int pool; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_5__* body_filter_chain; } ;
typedef TYPE_3__ ngx_http_lua_main_conf_t ;
struct TYPE_17__ {int seen_last_in_filter; int free_bufs; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {TYPE_6__* buf; struct TYPE_18__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_19__ {int last_buf; int last_in_chain; scalar_t__ last; scalar_t__ pos; int sync; int flush; } ;
typedef TYPE_6__ ngx_buf_t ;
typedef int lua_State ;
struct TYPE_14__ {int log; } ;






 int dd (char*,int) ;
 int luaL_checkint (int *,int) ;
 int luaL_error (int *,char*,...) ;
 unsigned int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int ngx_buf_in_memory (TYPE_6__*) ;
 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 scalar_t__ ngx_copy (scalar_t__,int *,size_t) ;
 TYPE_3__* ngx_http_get_module_main_conf (TYPE_2__*,int ) ;
 size_t ngx_http_lua_calc_strlen_in_table (int *,int,int,int) ;
 TYPE_5__* ngx_http_lua_chain_get_free_buf (int ,int ,int *,size_t) ;
 scalar_t__ ngx_http_lua_copy_str_in_table (int *,int,scalar_t__) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_body_filter_param_set(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    int type;
    int idx;
    int found;
    u_char *data;
    size_t size;
    unsigned last;
    unsigned flush = 0;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_chain_t *in;

    ngx_http_lua_main_conf_t *lmcf;

    idx = luaL_checkint(L, 2);

    dd("index: %d", idx);

    if (idx != 1 && idx != 2) {
        return luaL_error(L, "bad index: %d", idx);
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    if (idx == 2) {

        last = lua_toboolean(L, 3);

        in = lmcf->body_filter_chain;

        if (last) {
            ctx->seen_last_in_filter = 1;




            for (cl = in; cl; cl = cl->next) {
                if (cl->next == ((void*)0)) {
                    if (r == r->main) {
                        cl->buf->last_buf = 1;

                    } else {
                        cl->buf->last_in_chain = 1;
                    }

                    break;
                }
            }

        } else {


            found = 0;

            for (cl = in; cl; cl = cl->next) {
                b = cl->buf;

                if (b->last_buf) {
                    b->last_buf = 0;
                    found = 1;
                }

                if (b->last_in_chain) {
                    b->last_in_chain = 0;
                    found = 1;
                }

                if (found && b->last == b->pos && !ngx_buf_in_memory(b)) {


                    b->sync = 1;
                }
            }

            ctx->seen_last_in_filter = 0;
        }

        return 0;
    }



    type = lua_type(L, 3);

    switch (type) {
    case 129:
    case 130:
        data = (u_char *) lua_tolstring(L, 3, &size);
        break;

    case 131:


        in = lmcf->body_filter_chain;

        last = 0;

        for (cl = in; cl; cl = cl->next) {
            b = cl->buf;

            if (b->flush) {
                flush = 1;
            }

            if (b->last_in_chain || b->last_buf) {
                last = 1;
            }

            dd("mark the buf as consumed: %d", (int) ngx_buf_size(b));
            b->pos = b->last;
        }



        goto done;

    case 128:
        size = ngx_http_lua_calc_strlen_in_table(L, 3 , 3 ,
                                                 1 );
        data = ((void*)0);
        break;

    default:
        return luaL_error(L, "bad chunk data type: %s",
                          lua_typename(L, type));
    }

    in = lmcf->body_filter_chain;

    last = 0;

    for (cl = in; cl; cl = cl->next) {
        b = cl->buf;

        if (b->flush) {
            flush = 1;
        }

        if (b->last_buf || b->last_in_chain) {
            last = 1;
        }

        dd("mark the buf as consumed: %d", (int) ngx_buf_size(cl->buf));
        cl->buf->pos = cl->buf->last;
    }



    if (size == 0) {
        goto done;
    }

    cl = ngx_http_lua_chain_get_free_buf(r->connection->log, r->pool,
                                         &ctx->free_bufs, size);
    if (cl == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    if (type == 128) {
        cl->buf->last = ngx_http_lua_copy_str_in_table(L, 3, cl->buf->last);

    } else {
        cl->buf->last = ngx_copy(cl->buf->pos, data, size);
    }

done:

    if (last || flush) {
        if (cl == ((void*)0)) {
            cl = ngx_http_lua_chain_get_free_buf(r->connection->log,
                                                 r->pool,
                                                 &ctx->free_bufs, 0);
            if (cl == ((void*)0)) {
                return luaL_error(L, "no memory");
            }
        }

        if (last) {
            ctx->seen_last_in_filter = 1;

            if (r == r->main) {
                cl->buf->last_buf = 1;

            } else {
                cl->buf->last_in_chain = 1;
            }
        }

        if (flush) {
            cl->buf->flush = 1;
        }
    }

    lmcf->body_filter_chain = cl;

    return 0;
}
