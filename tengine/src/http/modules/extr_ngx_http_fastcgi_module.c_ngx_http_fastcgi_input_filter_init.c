
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int off_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_2__* upstream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ keep_conn; } ;
typedef TYPE_4__ ngx_http_fastcgi_loc_conf_t ;
typedef int ngx_http_fastcgi_header_t ;
struct TYPE_8__ {TYPE_1__* pipe; } ;
struct TYPE_7__ {int length; } ;


 int NGX_OK ;
 int ngx_http_fastcgi_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_fastcgi_input_filter_init(void *data)
{
    ngx_http_request_t *r = data;
    ngx_http_fastcgi_loc_conf_t *flcf;

    flcf = ngx_http_get_module_loc_conf(r, ngx_http_fastcgi_module);

    r->upstream->pipe->length = flcf->keep_conn ?
                                (off_t) sizeof(ngx_http_fastcgi_header_t) : -1;

    return NGX_OK;
}
