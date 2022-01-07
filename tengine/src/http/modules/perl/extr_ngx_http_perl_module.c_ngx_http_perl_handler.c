
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {TYPE_1__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_5__ {int count; } ;


 int NGX_DONE ;
 int ngx_http_perl_handle_request (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_perl_handler(ngx_http_request_t *r)
{
    r->main->count++;

    ngx_http_perl_handle_request(r);

    return NGX_DONE;
}
