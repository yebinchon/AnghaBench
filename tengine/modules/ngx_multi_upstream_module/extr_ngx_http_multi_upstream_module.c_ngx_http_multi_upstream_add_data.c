
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int queue; TYPE_3__* data; } ;
typedef TYPE_1__ ngx_multi_data_t ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ ngx_multi_connection_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int * multi_item; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_13__ {int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_get_multi_connection (TYPE_4__*) ;
 TYPE_1__* ngx_pcalloc (int ,int) ;
 int ngx_queue_insert_tail (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_multi_upstream_add_data(ngx_connection_t *c, ngx_http_request_t *r)
{
    ngx_multi_connection_t *multi_c;
    ngx_multi_data_t *item_data;

    multi_c = ngx_get_multi_connection(c);

    item_data = ngx_pcalloc(c->pool, sizeof(ngx_multi_data_t));
    if (item_data == ((void*)0)) {
        return NGX_ERROR;
    }

    item_data->data = r;
    ngx_queue_insert_tail(&multi_c->data, &item_data->queue);
    r->multi_item = &item_data->queue;

    return NGX_OK;
}
