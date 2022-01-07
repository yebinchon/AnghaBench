
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
typedef int ngx_pool_t ;
struct TYPE_7__ {int destroyed; scalar_t__ fd; TYPE_5__* write; TYPE_5__* read; int * pool; int log; } ;
typedef TYPE_1__ ngx_connection_t ;
struct TYPE_9__ {TYPE_1__** files; } ;
struct TYPE_8__ {int closed; scalar_t__ timer_set; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_6__* ngx_cycle ;
 int ngx_del_timer (TYPE_5__*) ;
 int ngx_destroy_pool (int *) ;
 int ngx_free_connection (TYPE_1__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_1__*) ;

void
ngx_http_lua_close_fake_connection(ngx_connection_t *c)
{
    ngx_pool_t *pool;
    ngx_connection_t *saved_c = ((void*)0);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http lua close fake http connection %p", c);

    c->destroyed = 1;

    pool = c->pool;

    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }

    if (c->write->timer_set) {
        ngx_del_timer(c->write);
    }

    c->read->closed = 1;
    c->write->closed = 1;



    c->fd = 0;

    if (ngx_cycle->files) {
        saved_c = ngx_cycle->files[0];
    }

    ngx_free_connection(c);

    c->fd = (ngx_socket_t) -1;

    if (ngx_cycle->files) {
        ngx_cycle->files[0] = saved_c;
    }

    if (pool) {
        ngx_destroy_pool(pool);
    }
}
