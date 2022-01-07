
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {int destroyed; scalar_t__ pool; int fd; int log; TYPE_1__* ssl; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_6__ {int no_wait_shutdown; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_close_connection (TYPE_2__*) ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_ssl_shutdown (TYPE_2__*) ;

ngx_int_t
ngx_http_multi_upstream_connection_close(ngx_connection_t *c)
{
    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
            "multi: close http upstream connection: %d", c->fd);

    if (c->pool) {
        ngx_destroy_pool(c->pool);
    }

    c->destroyed = 1;

    ngx_close_connection(c);

    return NGX_OK;
}
