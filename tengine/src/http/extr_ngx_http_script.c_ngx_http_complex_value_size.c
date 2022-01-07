
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_11__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {size_t size; } ;
struct TYPE_12__ {TYPE_1__ u; int * lengths; } ;
typedef TYPE_4__ ngx_http_complex_value_t ;
struct TYPE_10__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 size_t ngx_parse_size (int *) ;

size_t
ngx_http_complex_value_size(ngx_http_request_t *r,
    ngx_http_complex_value_t *val, size_t default_value)
{
    size_t size;
    ngx_str_t value;

    if (val == ((void*)0)) {
        return default_value;
    }

    if (val->lengths == ((void*)0)) {
        return val->u.size;
    }

    if (ngx_http_complex_value(r, val, &value) != NGX_OK) {
        return default_value;
    }

    size = ngx_parse_size(&value);

    if (size == (size_t) NGX_ERROR) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "invalid size \"%V\"", &value);
        return default_value;
    }

    return size;
}
