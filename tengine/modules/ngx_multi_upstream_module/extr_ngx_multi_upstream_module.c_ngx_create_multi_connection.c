
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* data; int handler; } ;
typedef TYPE_1__ ngx_pool_cleanup_t ;
struct TYPE_9__ {TYPE_3__* connection; int waiting_list; int leak_list; int send_list; int data; } ;
typedef TYPE_2__ ngx_multi_connection_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_3__ ngx_connection_t ;


 int ngx_multi_cleanup ;
 TYPE_2__* ngx_pcalloc (int ,int) ;
 TYPE_1__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_queue_init (int *) ;

ngx_multi_connection_t*
ngx_create_multi_connection(ngx_connection_t *c)
{
    ngx_multi_connection_t *multi_c;
    ngx_pool_cleanup_t *cln;


    multi_c = ngx_pcalloc(c->pool, sizeof(ngx_multi_connection_t));
    if (multi_c == ((void*)0)) {
        return ((void*)0);
    }

    ngx_queue_init(&multi_c->data);
    ngx_queue_init(&multi_c->send_list);
    ngx_queue_init(&multi_c->leak_list);
    ngx_queue_init(&multi_c->waiting_list);

    multi_c->connection = c;

    cln = ngx_pool_cleanup_add(c->pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    cln->handler = ngx_multi_cleanup;
    cln->data = multi_c;

    return multi_c;
}
