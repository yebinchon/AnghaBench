
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
typedef int ngx_pool_t ;
struct TYPE_11__ {int * data; int * action; int connection; } ;
typedef TYPE_1__ ngx_log_t ;
struct TYPE_12__ {int error; TYPE_8__* buffer; int * pool; int log_error; TYPE_1__* log; int number; scalar_t__ fd; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_14__ {int * start; } ;
struct TYPE_13__ {TYPE_2__** files; int log; } ;


 int CR ;
 int LF ;
 int NGX_ERROR_INFO ;
 int dd (char*,TYPE_2__*) ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_connection_counter ;
 int * ngx_create_pool (int,TYPE_1__*) ;
 TYPE_8__* ngx_create_temp_buf (int *,int) ;
 TYPE_7__* ngx_cycle ;
 TYPE_2__* ngx_get_connection (int ,int ) ;
 int ngx_http_lua_close_fake_connection (TYPE_2__*) ;
 TYPE_1__* ngx_pcalloc (int *,int) ;

ngx_connection_t *
ngx_http_lua_create_fake_connection(ngx_pool_t *pool)
{
    ngx_log_t *log;
    ngx_connection_t *c;
    ngx_connection_t *saved_c = ((void*)0);


    if (ngx_cycle->files) {
        saved_c = ngx_cycle->files[0];
    }

    c = ngx_get_connection(0, ngx_cycle->log);

    if (ngx_cycle->files) {
        ngx_cycle->files[0] = saved_c;
    }

    if (c == ((void*)0)) {
        return ((void*)0);
    }

    c->fd = (ngx_socket_t) -1;
    c->number = ngx_atomic_fetch_add(ngx_connection_counter, 1);

    if (pool) {
        c->pool = pool;

    } else {
        c->pool = ngx_create_pool(128, c->log);
        if (c->pool == ((void*)0)) {
            goto failed;
        }
    }

    log = ngx_pcalloc(c->pool, sizeof(ngx_log_t));
    if (log == ((void*)0)) {
        goto failed;
    }

    c->log = log;
    c->log->connection = c->number;
    c->log->action = ((void*)0);
    c->log->data = ((void*)0);

    c->log_error = NGX_ERROR_INFO;
    c->error = 1;

    dd("created fake connection: %p", c);

    return c;

failed:

    ngx_http_lua_close_fake_connection(c);
    return ((void*)0);
}
