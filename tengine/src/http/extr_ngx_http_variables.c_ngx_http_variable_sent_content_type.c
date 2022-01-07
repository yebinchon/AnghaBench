
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_9__ {int valid; int not_found; int data; scalar_t__ no_cacheable; scalar_t__ len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_7__ {int data; scalar_t__ len; } ;
struct TYPE_8__ {TYPE_1__ content_type; } ;
struct TYPE_10__ {TYPE_2__ headers_out; } ;
typedef TYPE_4__ ngx_http_request_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_sent_content_type(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    if (r->headers_out.content_type.len) {
        v->len = r->headers_out.content_type.len;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = r->headers_out.content_type.data;

    } else {
        v->not_found = 1;
    }

    return NGX_OK;
}
