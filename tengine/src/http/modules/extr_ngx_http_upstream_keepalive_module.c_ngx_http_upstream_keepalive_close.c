
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pool; TYPE_1__* ssl; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_6__ {int no_wait_shutdown; int no_send_shutdown; void (* handler ) (TYPE_2__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 int ngx_close_connection (TYPE_2__*) ;
 int ngx_destroy_pool (int ) ;
 scalar_t__ ngx_ssl_shutdown (TYPE_2__*) ;

__attribute__((used)) static void
ngx_http_upstream_keepalive_close(ngx_connection_t *c)
{
    ngx_destroy_pool(c->pool);
    ngx_close_connection(c);
}
