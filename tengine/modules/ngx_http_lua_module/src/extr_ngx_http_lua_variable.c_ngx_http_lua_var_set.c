
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_13__ {size_t len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_14__ {int valid; int not_found; char* data; size_t len; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_15__ {int flags; size_t index; int data; int (* set_handler ) (TYPE_4__*,TYPE_2__*,int ) ;} ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_16__ {TYPE_2__* variables; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {int variables_hash; } ;
typedef TYPE_5__ ngx_http_core_main_conf_t ;
typedef int lua_State ;





 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_HTTP_VAR_INDEXED ;
 int dd (char*) ;
 int luaL_argerror (int *,int,char const*) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 char* lua_newuserdata (int *,size_t) ;
 char* lua_pushfstring (int *,char*,int ) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 TYPE_3__* ngx_hash_find (int *,int ,char*,size_t) ;
 int ngx_hash_strlow (char*,char*,size_t) ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_main_conf (TYPE_4__*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_4__*) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 int ngx_memcpy (char*,char*,size_t) ;
 void* ngx_palloc (int ,int) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int ) ;

__attribute__((used)) static int
ngx_http_lua_var_set(lua_State *L)
{
    ngx_http_variable_t *v;
    ngx_http_variable_value_t *vv;
    ngx_http_core_main_conf_t *cmcf;
    u_char *p, *lowcase, *val;
    size_t len;
    ngx_str_t name;
    ngx_uint_t hash;
    ngx_http_request_t *r;
    int value_type;
    const char *msg;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);





    if (lua_type(L, 2) != 128) {
        return luaL_error(L, "bad variable name");
    }

    p = (u_char *) lua_tolstring(L, 2, &len);

    lowcase = lua_newuserdata(L, len + 1);

    hash = ngx_hash_strlow(lowcase, p, len);
    lowcase[len] = '\0';

    name.len = len;
    name.data = lowcase;



    value_type = lua_type(L, 3);
    switch (value_type) {
    case 129:
    case 128:
        p = (u_char *) luaL_checklstring(L, 3, &len);

        val = ngx_palloc(r->pool, len);
        if (val == ((void*)0)) {
            return luaL_error(L, "memory allocation error");
        }

        ngx_memcpy(val, p, len);

        break;

    case 130:


        val = ((void*)0);
        len = 0;

        break;

    default:
        msg = lua_pushfstring(L, "string, number, or nil expected, "
                              "but got %s", lua_typename(L, value_type));
        return luaL_argerror(L, 1, msg);
    }



    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    v = ngx_hash_find(&cmcf->variables_hash, hash, name.data, name.len);

    if (v) {
        if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
            return luaL_error(L, "variable \"%s\" not changeable", lowcase);
        }

        if (v->set_handler) {

            dd("set variables with set_handler");

            vv = ngx_palloc(r->pool, sizeof(ngx_http_variable_value_t));
            if (vv == ((void*)0)) {
                return luaL_error(L, "no memory");
            }

            if (value_type == 130) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;
                vv->data = ((void*)0);
                vv->len = 0;

            } else {
                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;
            }

            v->set_handler(r, vv, v->data);

            return 0;
        }

        if (v->flags & NGX_HTTP_VAR_INDEXED) {
            vv = &r->variables[v->index];

            dd("set indexed variable");

            if (value_type == 130) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;

                vv->data = ((void*)0);
                vv->len = 0;

            } else {
                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;
            }

            return 0;
        }

        return luaL_error(L, "variable \"%s\" cannot be assigned a value",
                          lowcase);
    }



    return luaL_error(L, "variable \"%s\" not found for writing; "
                      "maybe it is a built-in variable that is not changeable "
                      "or you forgot to use \"set $%s '';\" "
                      "in the config file to define it first",
                      lowcase, lowcase);
}
