
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int valid; int data; scalar_t__ not_found; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_3__ ngx_stream_variable_value_t ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int data; int len; } ;
struct TYPE_7__ {TYPE_2__ addr_text; } ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_stream_variable_remote_addr(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    v->len = s->connection->addr_text.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = s->connection->addr_text.data;

    return NGX_OK;
}
