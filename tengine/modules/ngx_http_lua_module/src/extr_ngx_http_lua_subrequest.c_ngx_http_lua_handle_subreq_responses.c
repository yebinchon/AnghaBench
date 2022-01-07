
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_31__ {int len; scalar_t__ data; } ;
struct TYPE_30__ {int len; scalar_t__ data; } ;
struct TYPE_32__ {scalar_t__ hash; TYPE_8__ value; TYPE_7__ key; } ;
typedef TYPE_9__ ngx_table_elt_t ;
struct TYPE_18__ {int len; scalar_t__ data; } ;
typedef TYPE_10__ ngx_str_t ;
struct TYPE_19__ {size_t nelts; TYPE_9__* elts; struct TYPE_19__* next; } ;
typedef TYPE_11__ ngx_list_part_t ;
struct TYPE_28__ {int data; scalar_t__ len; } ;
struct TYPE_20__ {int pool; TYPE_5__ uri; TYPE_4__* connection; } ;
typedef TYPE_12__ ngx_http_request_t ;
struct TYPE_21__ {TYPE_14__* cur_co_ctx; } ;
typedef TYPE_13__ ngx_http_lua_ctx_t ;
struct TYPE_22__ {size_t nsubreqs; int* sr_flags; TYPE_15__** sr_headers; TYPE_10__* sr_bodies; int * sr_statuses; scalar_t__ pending_subreqs; int * co; } ;
typedef TYPE_14__ ngx_http_lua_co_ctx_t ;
struct TYPE_24__ {int len; scalar_t__ data; } ;
struct TYPE_29__ {TYPE_11__ part; } ;
struct TYPE_23__ {scalar_t__ content_length_n; int last_modified_time; scalar_t__ status; int * last_modified; TYPE_3__* location; int * content_length; TYPE_1__ content_type; TYPE_6__ headers; } ;
typedef TYPE_15__ ngx_http_headers_out_t ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int buf ;
struct TYPE_27__ {int log; } ;
struct TYPE_25__ {int len; scalar_t__ data; } ;
struct TYPE_26__ {TYPE_2__ value; } ;


 int NGX_HTTP_LUA_SUBREQ_TRUNCATED ;
 scalar_t__ NGX_HTTP_NOT_MODIFIED ;
 scalar_t__ NGX_HTTP_NO_CONTENT ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_PARTIAL_CONTENT ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,...) ;
 int lua_createtable (int *,int,size_t) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_time (int *,int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_pfree (int ,scalar_t__) ;

__attribute__((used)) static void
ngx_http_lua_handle_subreq_responses(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_uint_t i, count;
    ngx_uint_t index;
    lua_State *co;
    ngx_str_t *body_str;
    ngx_table_elt_t *header;
    ngx_list_part_t *part;
    ngx_http_headers_out_t *sr_headers;
    ngx_http_lua_co_ctx_t *coctx;

    u_char buf[sizeof("Mon, 28 Sep 1970 06:00:00 GMT") - 1];

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua handle subrequest responses");

    coctx = ctx->cur_co_ctx;
    co = coctx->co;

    for (index = 0; index < coctx->nsubreqs; index++) {
        dd("summary: reqs %d, subquery %d, pending %d, req %.*s",
           (int) coctx->nsubreqs,
           (int) index,
           (int) coctx->pending_subreqs,
           (int) r->uri.len, r->uri.data);


        lua_createtable(co, 0 , 4 );


        lua_pushinteger(co, coctx->sr_statuses[index]);
        lua_setfield(co, -2, "status");

        dd("captured subrequest flags: %d", (int) coctx->sr_flags[index]);


        if (coctx->sr_flags[index] & NGX_HTTP_LUA_SUBREQ_TRUNCATED) {
            lua_pushboolean(co, 1);
            lua_setfield(co, -2, "truncated");

        } else {
            lua_pushboolean(co, 0);
            lua_setfield(co, -2, "truncated");
        }



        body_str = &coctx->sr_bodies[index];

        lua_pushlstring(co, (char *) body_str->data, body_str->len);
        lua_setfield(co, -2, "body");

        if (body_str->data) {
            dd("free body buffer ASAP");
            ngx_pfree(r->pool, body_str->data);
        }



        sr_headers = coctx->sr_headers[index];

        part = &sr_headers->headers.part;
        count = part->nelts;
        while (part->next) {
            part = part->next;
            count += part->nelts;
        }

        lua_createtable(co, 0, count + 5);

        dd("saving subrequest response headers");

        part = &sr_headers->headers.part;
        header = part->elts;

        for (i = 0; ; i++) {

            if (i >= part->nelts) {
                if (part->next == ((void*)0)) {
                    break;
                }

                part = part->next;
                header = part->elts;
                i = 0;
            }

            dd("checking sr header %.*s", (int) header[i].key.len,
               header[i].key.data);


            if (header[i].hash == 0) {
                continue;
            }


            header[i].hash = 0;

            dd("pushing sr header %.*s", (int) header[i].key.len,
               header[i].key.data);

            lua_pushlstring(co, (char *) header[i].key.data,
                            header[i].key.len);
            lua_pushvalue(co, -1);


            lua_rawget(co, -3);

            if (lua_isnil(co, -1)) {
                lua_pop(co, 1);

                lua_pushlstring(co, (char *) header[i].value.data,
                                header[i].value.len);


                lua_rawset(co, -3);

            } else {

                if (!lua_istable(co, -1)) {
                    lua_createtable(co, 4, 0);


                    lua_insert(co, -2);
                    lua_rawseti(co, -2, 1);

                    lua_pushlstring(co, (char *) header[i].value.data,
                                    header[i].value.len);


                    lua_rawseti(co, -2, lua_objlen(co, -2) + 1);


                    lua_rawset(co, -3);

                } else {
                    lua_pushlstring(co, (char *) header[i].value.data,
                                    header[i].value.len);


                    lua_rawseti(co, -2, lua_objlen(co, -2) + 1);


                    lua_pop(co, 2);
                }
            }
        }

        if (sr_headers->content_type.len) {
            lua_pushliteral(co, "Content-Type");
            lua_pushlstring(co, (char *) sr_headers->content_type.data,
                            sr_headers->content_type.len);
            lua_rawset(co, -3);
        }

        if (sr_headers->content_length == ((void*)0)
            && sr_headers->content_length_n >= 0)
        {
            lua_pushliteral(co, "Content-Length");

            lua_pushnumber(co, (lua_Number) sr_headers->content_length_n);


            lua_rawset(co, -3);
        }



        if (sr_headers->location && sr_headers->location->value.len) {
            lua_pushliteral(co, "Location");
            lua_pushlstring(co, (char *) sr_headers->location->value.data,
                            sr_headers->location->value.len);

            lua_rawset(co, -3);
        }

        if (sr_headers->last_modified_time != -1) {
            if (sr_headers->status != NGX_HTTP_OK
                && sr_headers->status != NGX_HTTP_PARTIAL_CONTENT
                && sr_headers->status != NGX_HTTP_NOT_MODIFIED
                && sr_headers->status != NGX_HTTP_NO_CONTENT)
            {
                sr_headers->last_modified_time = -1;
                sr_headers->last_modified = ((void*)0);
            }
        }

        if (sr_headers->last_modified == ((void*)0)
            && sr_headers->last_modified_time != -1)
        {
            (void) ngx_http_time(buf, sr_headers->last_modified_time);

            lua_pushliteral(co, "Last-Modified");
            lua_pushlstring(co, (char *) buf, sizeof(buf));
            lua_rawset(co, -3);
        }

        lua_setfield(co, -2, "header");


    }
}
