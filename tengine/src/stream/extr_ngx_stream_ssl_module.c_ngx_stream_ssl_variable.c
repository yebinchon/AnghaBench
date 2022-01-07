
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int valid; int not_found; scalar_t__ no_cacheable; int len; int data; } ;
typedef TYPE_1__ ngx_stream_variable_value_t ;
struct TYPE_9__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
struct TYPE_10__ {int data; int len; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ (* ngx_ssl_variable_handler_pt ) (TYPE_4__*,int ,TYPE_3__*) ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int pool; scalar_t__ ssl; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_stream_ssl_variable(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    ngx_ssl_variable_handler_pt handler = (ngx_ssl_variable_handler_pt) data;

    ngx_str_t str;

    if (s->connection->ssl) {

        if (handler(s->connection, s->connection->pool, &str) != NGX_OK) {
            return NGX_ERROR;
        }

        v->len = str.len;
        v->data = str.data;

        if (v->len) {
            v->valid = 1;
            v->no_cacheable = 0;
            v->not_found = 0;

            return NGX_OK;
        }
    }

    v->not_found = 1;

    return NGX_OK;
}
