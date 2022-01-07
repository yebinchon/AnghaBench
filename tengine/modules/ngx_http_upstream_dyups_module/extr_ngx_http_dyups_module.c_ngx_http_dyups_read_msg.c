
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_11__ {int mutex; } ;
typedef TYPE_2__ ngx_slab_pool_t ;
struct TYPE_12__ {scalar_t__ deleted; int dynamic; } ;
typedef TYPE_3__ ngx_http_dyups_srv_conf_t ;
struct TYPE_10__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_13__ {int read_msg_log; int read_msg_timeout; TYPE_1__ dy_upstreams; } ;
typedef TYPE_4__ ngx_http_dyups_main_conf_t ;
struct TYPE_14__ {int log; TYPE_4__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_15__ {TYPE_2__* shpool; } ;


 int NGX_LOG_INFO ;
 int ngx_dyups_add_timer (TYPE_5__*,int ) ;
 TYPE_8__ ngx_dyups_global_ctx ;
 int ngx_http_dyups_read_msg_locked (TYPE_5__*) ;
 int ngx_log_error (int ,int ,int ,char*,size_t,size_t,size_t,size_t) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static void
ngx_http_dyups_read_msg(ngx_event_t *ev)
{
    ngx_uint_t i, count, s_count, d_count;
    ngx_slab_pool_t *shpool;
    ngx_http_dyups_srv_conf_t *duscfs, *duscf;
    ngx_http_dyups_main_conf_t *dmcf;

    dmcf = ev->data;
    shpool = ngx_dyups_global_ctx.shpool;

    count = 0;
    s_count = 0;
    d_count = 0;

    duscfs = dmcf->dy_upstreams.elts;
    for (i = 0; i < dmcf->dy_upstreams.nelts; i++) {

        duscf = &duscfs[i];

        if (!duscf->dynamic) {
            s_count++;
            continue;
        }

        if (duscf->deleted) {
            d_count++;
            continue;
        }

        count++;
    }

    if (dmcf->read_msg_log == 1) {
        ngx_log_error(NGX_LOG_INFO, ev->log, 0,
                      "[dyups] has %ui upstreams, %ui static, %ui deleted, all %ui",
                      count, s_count, d_count, dmcf->dy_upstreams.nelts);
    }

    ngx_shmtx_lock(&shpool->mutex);

    ngx_http_dyups_read_msg_locked(ev);

    ngx_shmtx_unlock(&shpool->mutex);

    ngx_dyups_add_timer(ev, dmcf->read_msg_timeout);
}
