
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_15__ {int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int pool; TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef scalar_t__ (* ngx_http_lua_script_len_code_pt ) (TYPE_5__*) ;
struct TYPE_17__ {int ncaptures; int* captures; int * ip; int * pos; int * captures_data; int log; } ;
typedef TYPE_5__ ngx_http_lua_script_engine_t ;
typedef int (* ngx_http_lua_script_code_pt ) (TYPE_5__*) ;
struct TYPE_13__ {size_t len; scalar_t__ data; } ;
struct TYPE_18__ {int * values; int * lengths; TYPE_1__ value; } ;
typedef TYPE_8__ ngx_http_lua_complex_value_t ;
typedef int luaL_Buffer ;
struct TYPE_14__ {int log; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int luaL_addlstring (int *,char*,size_t) ;
 int ngx_memzero (TYPE_5__*,int) ;
 int ngx_pfree (int ,int *) ;
 int * ngx_pnalloc (int ,size_t) ;

ngx_int_t
ngx_http_lua_complex_value(ngx_http_request_t *r, ngx_str_t *subj,
    size_t offset, ngx_int_t count, int *cap,
    ngx_http_lua_complex_value_t *val, luaL_Buffer *luabuf)
{
    size_t len;
    u_char *p;
    ngx_http_lua_script_code_pt code;
    ngx_http_lua_script_len_code_pt lcode;
    ngx_http_lua_script_engine_t e;

    if (val->lengths == ((void*)0)) {
        luaL_addlstring(luabuf, (char *) &subj->data[offset], cap[0] - offset);
        luaL_addlstring(luabuf, (char *) val->value.data, val->value.len);

        return NGX_OK;
    }

    ngx_memzero(&e, sizeof(ngx_http_lua_script_engine_t));

    e.log = r->connection->log;
    e.ncaptures = count * 2;
    e.captures = cap;
    e.captures_data = subj->data;

    e.ip = val->lengths;

    len = 0;

    while (*(uintptr_t *) e.ip) {
        lcode = *(ngx_http_lua_script_len_code_pt *) e.ip;
        len += lcode(&e);
    }

    p = ngx_pnalloc(r->pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    e.ip = val->values;
    e.pos = p;

    while (*(uintptr_t *) e.ip) {
        code = *(ngx_http_lua_script_code_pt *) e.ip;
        code((ngx_http_lua_script_engine_t *) &e);
    }

    luaL_addlstring(luabuf, (char *) &subj->data[offset], cap[0] - offset);
    luaL_addlstring(luabuf, (char *) p, len);

    ngx_pfree(r->pool, p);

    return NGX_OK;
}
