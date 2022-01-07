
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {int * request_bufs; } ;
typedef TYPE_1__ ngx_http_tfs_t ;
typedef int ngx_chain_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_http_tfs_name_server_create_message (TYPE_1__*) ;

ngx_int_t
ngx_http_tfs_create_ns_request(ngx_http_tfs_t *t)
{
    ngx_chain_t *cl;

    cl = ngx_http_tfs_name_server_create_message(t);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    t->request_bufs = cl;

    return NGX_OK;
}
