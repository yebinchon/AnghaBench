
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {int content_length_n; int last_modified_time; } ;
struct TYPE_12__ {int log_error; int log; } ;
struct TYPE_14__ {TYPE_4__ headers_in; TYPE_3__ peer; scalar_t__ cleanup; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_15__ {int * cache; TYPE_2__* connection; TYPE_5__* upstream; int pool; TYPE_1__* main; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_11__ {int log; } ;
struct TYPE_10__ {int count; } ;


 int NGX_ERROR ;
 int NGX_ERROR_ERR ;
 int NGX_OK ;
 int ngx_http_upstream_cleanup (TYPE_6__*) ;
 TYPE_5__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_upstream_create(ngx_http_request_t *r)
{
    ngx_http_upstream_t *u;

    u = r->upstream;

    if (u && u->cleanup) {
        r->main->count++;
        ngx_http_upstream_cleanup(r);
    }

    u = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_t));
    if (u == ((void*)0)) {
        return NGX_ERROR;
    }

    r->upstream = u;

    u->peer.log = r->connection->log;
    u->peer.log_error = NGX_ERROR_ERR;





    u->headers_in.content_length_n = -1;
    u->headers_in.last_modified_time = -1;

    return NGX_OK;
}
