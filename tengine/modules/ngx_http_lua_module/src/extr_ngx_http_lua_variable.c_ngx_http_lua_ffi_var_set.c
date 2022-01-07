
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_13__ {int valid; int not_found; size_t len; int * data; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_14__ {int flags; size_t index; int data; int (* set_handler ) (TYPE_4__*,TYPE_2__*,int ) ;} ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_15__ {int pool; TYPE_2__* variables; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_16__ {int variables_hash; } ;
typedef TYPE_5__ ngx_http_core_main_conf_t ;
struct TYPE_12__ {scalar_t__ fd; } ;


 int NGX_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_HTTP_VAR_INDEXED ;
 int NGX_OK ;
 int dd (char*,...) ;
 TYPE_3__* ngx_hash_find (int *,int ,int *,size_t) ;
 int ngx_hash_strlow (int *,int *,size_t) ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_main_conf (TYPE_4__*,int ) ;
 int ngx_memcpy (int *,int *,size_t) ;
 void* ngx_palloc (int ,size_t) ;
 int * ngx_snprintf (int *,size_t,char*,...) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int ) ;

int
ngx_http_lua_ffi_var_set(ngx_http_request_t *r, u_char *name_data,
    size_t name_len, u_char *lowcase_buf, u_char *value, size_t value_len,
    u_char *errbuf, size_t *errlen)
{
    u_char *p;
    ngx_uint_t hash;
    ngx_http_variable_t *v;
    ngx_http_variable_value_t *vv;
    ngx_http_core_main_conf_t *cmcf;

    if (r == ((void*)0)) {
        *errlen = ngx_snprintf(errbuf, *errlen, "no request object found")
                  - errbuf;
        return NGX_ERROR;
    }

    if ((r)->connection->fd == (ngx_socket_t) -1) {
        *errlen = ngx_snprintf(errbuf, *errlen,
                               "API disabled in the current context")
                  - errbuf;
        return NGX_ERROR;
    }

    hash = ngx_hash_strlow(lowcase_buf, name_data, name_len);

    dd("variable name: %.*s", (int) name_len, lowcase_buf);



    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    v = ngx_hash_find(&cmcf->variables_hash, hash, lowcase_buf, name_len);

    if (v) {
        if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
            dd("variable not changeable");
            *errlen = ngx_snprintf(errbuf, *errlen,
                                   "variable \"%*s\" not changeable",
                                   name_len, lowcase_buf)
                      - errbuf;
            return NGX_ERROR;
        }

        if (v->set_handler) {

            dd("set variables with set_handler");

            if (value != ((void*)0) && value_len) {
                vv = ngx_palloc(r->pool, sizeof(ngx_http_variable_value_t)
                                + value_len);
                if (vv == ((void*)0)) {
                    goto nomem;
                }

                p = (u_char *) vv + sizeof(ngx_http_variable_value_t);
                ngx_memcpy(p, value, value_len);
                value = p;

            } else {
                vv = ngx_palloc(r->pool, sizeof(ngx_http_variable_value_t));
                if (vv == ((void*)0)) {
                    goto nomem;
                }
            }

            if (value == ((void*)0)) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;
                vv->data = ((void*)0);
                vv->len = 0;

            } else {
                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = value;
                vv->len = value_len;
            }

            v->set_handler(r, vv, v->data);
            return NGX_OK;
        }

        if (v->flags & NGX_HTTP_VAR_INDEXED) {
            vv = &r->variables[v->index];

            dd("set indexed variable");

            if (value == ((void*)0)) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;

                vv->data = ((void*)0);
                vv->len = 0;

            } else {
                p = ngx_palloc(r->pool, value_len);
                if (p == ((void*)0)) {
                    goto nomem;
                }

                ngx_memcpy(p, value, value_len);
                value = p;

                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = value;
                vv->len = value_len;
            }

            return NGX_OK;
        }

        *errlen = ngx_snprintf(errbuf, *errlen,
                               "variable \"%*s\" cannot be assigned "
                               "a value", name_len, lowcase_buf)
                  - errbuf;
        return NGX_ERROR;
    }



    *errlen = ngx_snprintf(errbuf, *errlen,
                           "variable \"%*s\" not found for writing; "
                           "maybe it is a built-in variable that is not "
                           "changeable or you forgot to use \"set $%*s '';\" "
                           "in the config file to define it first",
                           name_len, lowcase_buf, name_len, lowcase_buf)
              - errbuf;
    return NGX_ERROR;

nomem:

    *errlen = ngx_snprintf(errbuf, *errlen, "no memory") - errbuf;
    return NGX_ERROR;
}
