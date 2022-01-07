
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {int not_found; int valid; int data; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_14__ {TYPE_4__* request_body; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_12__ {TYPE_3__* temp_file; } ;
struct TYPE_9__ {int data; int len; } ;
struct TYPE_10__ {TYPE_1__ name; } ;
struct TYPE_11__ {TYPE_2__ file; } ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_request_body_file(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    if (r->request_body == ((void*)0) || r->request_body->temp_file == ((void*)0)) {
        v->not_found = 1;

        return NGX_OK;
    }

    v->len = r->request_body->temp_file->file.name.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = r->request_body->temp_file->file.name.data;

    return NGX_OK;
}
