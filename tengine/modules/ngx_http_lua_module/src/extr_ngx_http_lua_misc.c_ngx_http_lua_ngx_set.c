
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_8__ {int status; TYPE_4__ status_line; } ;
struct TYPE_9__ {TYPE_2__ headers_out; scalar_t__ err_status; TYPE_1__* connection; scalar_t__ header_sent; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_ERR ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_rawset (int *,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_3__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_ngx_set_ctx (int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_str_set (TYPE_4__*,char*) ;
 scalar_t__ ngx_strncmp (int *,char*,int) ;

__attribute__((used)) static int
ngx_http_lua_ngx_set(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *p;
    size_t len;


    p = (u_char *) luaL_checklstring(L, 2, &len);

    if (len == sizeof("status") - 1
        && ngx_strncmp(p, "status", sizeof("status") - 1) == 0)
    {
        r = ngx_http_lua_get_req(L);
        if (r == ((void*)0)) {
            return luaL_error(L, "no request object found");
        }

        if (r->header_sent) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to set ngx.status after sending out "
                          "response headers");
            return 0;
        }

        if (r->err_status) {
            r->err_status = 0;
        }

        ngx_http_lua_check_fake_request(L, r);


        r->headers_out.status = (ngx_uint_t) luaL_checknumber(L, 3);

        if (r->headers_out.status == 101) {





            ngx_str_set(&r->headers_out.status_line, "101 Switching Protocols");

        } else {
            r->headers_out.status_line.len = 0;
        }

        return 0;
    }

    if (len == sizeof("ctx") - 1
        && ngx_strncmp(p, "ctx", sizeof("ctx") - 1) == 0)
    {
        r = ngx_http_lua_get_req(L);
        if (r == ((void*)0)) {
            return luaL_error(L, "no request object found");
        }

        return ngx_http_lua_ngx_set_ctx(L);
    }

    lua_rawset(L, -3);
    return 0;
}
