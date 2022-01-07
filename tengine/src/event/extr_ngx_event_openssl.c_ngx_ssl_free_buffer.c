
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ssl; int pool; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_6__ {TYPE_1__* buf; } ;
struct TYPE_5__ {int * start; } ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_pfree (int ,int *) ;

void
ngx_ssl_free_buffer(ngx_connection_t *c)
{
    if (c->ssl->buf && c->ssl->buf->start) {
        if (ngx_pfree(c->pool, c->ssl->buf->start) == NGX_OK) {
            c->ssl->buf->start = ((void*)0);
        }
    }
}
