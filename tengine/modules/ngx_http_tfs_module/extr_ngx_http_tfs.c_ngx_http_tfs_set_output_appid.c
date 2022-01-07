
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int * json_output; TYPE_2__* out_bufs; int pool; int log; } ;
typedef TYPE_1__ ngx_http_tfs_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ ngx_chain_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_http_tfs_json_appid (int *,int ) ;
 int * ngx_http_tfs_json_init (int ,int ) ;

ngx_int_t
ngx_http_tfs_set_output_appid(ngx_http_tfs_t *t, uint64_t app_id)
{
    ngx_chain_t *cl, **ll;

    t->json_output = ngx_http_tfs_json_init(t->log, t->pool);
    if (t->json_output == ((void*)0)) {
        return NGX_ERROR;
    }

    for (cl = t->out_bufs, ll = &t->out_bufs; cl; cl = cl->next) {
        ll = &cl->next;
    }

    cl = ngx_http_tfs_json_appid(t->json_output, app_id);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    *ll = cl;
    return NGX_OK;
}
