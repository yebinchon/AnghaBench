
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_10__ {size_t len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_11__ {size_t len; int * data; scalar_t__ not_found; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_12__ {int ncaptures; int* captures; int * captures_data; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ fd; } ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_OK ;
 int dd (char*,int,int) ;
 int ngx_hash_strlow (int *,int *,size_t) ;
 TYPE_3__* ngx_http_get_variable (TYPE_4__*,TYPE_2__*,int) ;

int
ngx_http_lua_ffi_var_get(ngx_http_request_t *r, u_char *name_data,
    size_t name_len, u_char *lowcase_buf, int capture_id, u_char **value,
    size_t *value_len, char **err)
{
    ngx_uint_t hash;
    ngx_str_t name;
    ngx_http_variable_value_t *vv;







    if (r == ((void*)0)) {
        *err = "no request object found";
        return NGX_ERROR;
    }

    if ((r)->connection->fd == (ngx_socket_t) -1) {
        *err = "API disabled in the current context";
        return NGX_ERROR;
    }
    hash = ngx_hash_strlow(lowcase_buf, name_data, name_len);

    name.data = lowcase_buf;
    name.len = name_len;

    dd("variable name: %.*s", (int) name_len, lowcase_buf);

    vv = ngx_http_get_variable(r, &name, hash);
    if (vv == ((void*)0) || vv->not_found) {
        return NGX_DECLINED;
    }

    *value = vv->data;
    *value_len = vv->len;
    return NGX_OK;
}
