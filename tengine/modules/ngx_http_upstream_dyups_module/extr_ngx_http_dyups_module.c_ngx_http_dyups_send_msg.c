
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int ngx_uint_t ;
struct TYPE_18__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_slab_pool_t ;
typedef int ngx_pid_t ;
typedef int ngx_int_t ;
struct TYPE_19__ {int version; int msg_queue; } ;
typedef TYPE_3__ ngx_dyups_shctx_t ;
struct TYPE_23__ {int len; int * data; } ;
struct TYPE_17__ {int len; int * data; } ;
struct TYPE_20__ {int queue; scalar_t__ count; TYPE_9__ name; TYPE_1__ content; struct TYPE_20__* pid; int flag; } ;
typedef TYPE_4__ ngx_dyups_msg_t ;
struct TYPE_21__ {int worker_processes; } ;
typedef TYPE_5__ ngx_core_conf_t ;
struct TYPE_22__ {int last; int pos; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_16__ {int log; int conf_ctx; } ;
struct TYPE_15__ {int * shpool; TYPE_3__* sh; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_core_module ;
 TYPE_14__* ngx_cycle ;
 int ngx_dyups_destroy_msg (int *,TYPE_4__*) ;
 TYPE_12__ ngx_dyups_global_ctx ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_log_debug3 (int ,int ,int ,char*,TYPE_9__*,scalar_t__,int) ;
 int ngx_memcpy (int *,int,int) ;
 int ngx_memzero (TYPE_4__*,int) ;
 TYPE_4__ ngx_pid ;
 int ngx_queue_insert_head (int *,int *) ;
 void* ngx_slab_alloc_locked (int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_send_msg(ngx_str_t *name, ngx_buf_t *body, ngx_uint_t flag)
{
    ngx_core_conf_t *ccf;
    ngx_slab_pool_t *shpool;
    ngx_dyups_msg_t *msg;
    ngx_dyups_shctx_t *sh;

    ccf = (ngx_core_conf_t *) ngx_get_conf(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    sh = ngx_dyups_global_ctx.sh;
    shpool = ngx_dyups_global_ctx.shpool;

    msg = ngx_slab_alloc_locked(shpool, sizeof(ngx_dyups_msg_t));
    if (msg == ((void*)0)) {
        goto failed;
    }

    ngx_memzero(msg, sizeof(ngx_dyups_msg_t));

    msg->flag = flag;
    msg->count = 0;
    msg->pid = ngx_slab_alloc_locked(shpool,
                                     sizeof(ngx_pid_t) * ccf->worker_processes);

    if (msg->pid == ((void*)0)) {
        goto failed;
    }

    ngx_memzero(msg->pid, sizeof(ngx_pid_t) * ccf->worker_processes);
    msg->pid[0] = ngx_pid;
    msg->count++;

    msg->name.data = ngx_slab_alloc_locked(shpool, name->len);
    if (msg->name.data == ((void*)0)) {
        goto failed;
    }

    ngx_memcpy(msg->name.data, name->data, name->len);
    msg->name.len = name->len;

    if (body) {
        msg->content.data = ngx_slab_alloc_locked(shpool,
                                                  body->last - body->pos);
        if (msg->content.data == ((void*)0)) {
            goto failed;
        }

        ngx_memcpy(msg->content.data, body->pos, body->last - body->pos);
        msg->content.len = body->last - body->pos;

    } else {
        msg->content.data = ((void*)0);
        msg->content.len = 0;
    }

    sh->version++;

    if (sh->version == 0) {
        sh->version = 1;
    };

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] send msg %V count %ui version: %ui",
                   &msg->name, msg->count, sh->version);

    ngx_queue_insert_head(&sh->msg_queue, &msg->queue);

    return NGX_OK;

failed:

    if (msg) {
        ngx_dyups_destroy_msg(shpool, msg);
    }

    return NGX_ERROR;
}
