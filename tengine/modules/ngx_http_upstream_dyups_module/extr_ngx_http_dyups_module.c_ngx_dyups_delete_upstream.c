
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_1__ ngx_slab_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {int trylock; } ;
typedef TYPE_2__ ngx_http_dyups_main_conf_t ;
typedef int ngx_event_t ;
struct TYPE_10__ {TYPE_1__* shpool; int msg_timer; } ;
struct TYPE_9__ {int log; } ;


 int NGX_DYUPS_DELETE ;
 scalar_t__ NGX_HTTP_CONFLICT ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_ALLOWED ;
 scalar_t__ NGX_HTTP_OK ;
 int NGX_LOG_ALERT ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_cycle ;
 scalar_t__ ngx_dyups_do_delete (int *,int *) ;
 TYPE_5__ ngx_dyups_global_ctx ;
 TYPE_2__* ngx_http_cycle_get_module_main_conf (TYPE_4__*,int ) ;
 int ngx_http_dyups_api_enable ;
 int ngx_http_dyups_module ;
 int ngx_http_dyups_read_msg_locked (int *) ;
 scalar_t__ ngx_http_dyups_send_msg (int *,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int **) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_trylock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 int ngx_str_set (int *,char*) ;

ngx_int_t
ngx_dyups_delete_upstream(ngx_str_t *name, ngx_str_t *rv)
{
    ngx_int_t status, rc;
    ngx_event_t *timer;
    ngx_slab_pool_t *shpool;
    ngx_http_dyups_main_conf_t *dmcf;

    dmcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                               ngx_http_dyups_module);
    timer = &ngx_dyups_global_ctx.msg_timer;
    shpool = ngx_dyups_global_ctx.shpool;

    if (!ngx_http_dyups_api_enable) {
        ngx_str_set(rv, "API disabled\n");
        return NGX_HTTP_NOT_ALLOWED;
    }

    if (!dmcf->trylock) {

        ngx_shmtx_lock(&shpool->mutex);

    } else {

        if (!ngx_shmtx_trylock(&shpool->mutex)) {
            return NGX_HTTP_CONFLICT;
        }

    }

    ngx_http_dyups_read_msg_locked(timer);

    status = ngx_dyups_do_delete(name, rv);
    if (status != NGX_HTTP_OK) {
        goto finish;
    }

    rc = ngx_http_dyups_send_msg(name, ((void*)0), NGX_DYUPS_DELETE);
    if (rc != NGX_OK) {
        ngx_str_set(rv, "alert: delte success but not sync to other process");
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0, "[dyups] %V", &rv);
        status = NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

 finish:

    ngx_shmtx_unlock(&shpool->mutex);

    return status;
}
