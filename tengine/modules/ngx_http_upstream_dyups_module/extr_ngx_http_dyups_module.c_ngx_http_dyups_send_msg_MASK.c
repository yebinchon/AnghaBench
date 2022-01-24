#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_18__ {int len; int data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_slab_pool_t ;
typedef  int /*<<< orphan*/  ngx_pid_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {int version; int /*<<< orphan*/  msg_queue; } ;
typedef  TYPE_3__ ngx_dyups_shctx_t ;
struct TYPE_23__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_20__ {int /*<<< orphan*/  queue; scalar_t__ count; TYPE_9__ name; TYPE_1__ content; struct TYPE_20__* pid; int /*<<< orphan*/  flag; } ;
typedef  TYPE_4__ ngx_dyups_msg_t ;
struct TYPE_21__ {int worker_processes; } ;
typedef  TYPE_5__ ngx_core_conf_t ;
struct TYPE_22__ {int last; int pos; } ;
typedef  TYPE_6__ ngx_buf_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_15__ {int /*<<< orphan*/ * shpool; TYPE_3__* sh; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_core_module ; 
 TYPE_14__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_12__ ngx_dyups_global_ctx ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_9__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 TYPE_4__ ngx_pid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_str_t *name, ngx_buf_t *body, ngx_uint_t flag)
{
    ngx_core_conf_t    *ccf;
    ngx_slab_pool_t    *shpool;
    ngx_dyups_msg_t    *msg;
    ngx_dyups_shctx_t  *sh;

    ccf = (ngx_core_conf_t *) FUNC1(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    sh = ngx_dyups_global_ctx.sh;
    shpool = ngx_dyups_global_ctx.shpool;

    msg = FUNC6(shpool, sizeof(ngx_dyups_msg_t));
    if (msg == NULL) {
        goto failed;
    }

    FUNC4(msg, sizeof(ngx_dyups_msg_t));

    msg->flag = flag;
    msg->count = 0;
    msg->pid = FUNC6(shpool,
                                     sizeof(ngx_pid_t) * ccf->worker_processes);

    if (msg->pid == NULL) {
        goto failed;
    }

    FUNC4(msg->pid, sizeof(ngx_pid_t) * ccf->worker_processes);
    msg->pid[0] = ngx_pid;
    msg->count++;

    msg->name.data = FUNC6(shpool, name->len);
    if (msg->name.data == NULL) {
        goto failed;
    }

    FUNC3(msg->name.data, name->data, name->len);
    msg->name.len = name->len;

    if (body) {
        msg->content.data = FUNC6(shpool,
                                                  body->last - body->pos);
        if (msg->content.data == NULL) {
            goto failed;
        }

        FUNC3(msg->content.data, body->pos, body->last - body->pos);
        msg->content.len = body->last - body->pos;

    } else {
        msg->content.data = NULL;
        msg->content.len = 0;
    }

    sh->version++;

    if (sh->version == 0) {
        sh->version = 1;
    };

    FUNC2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] send msg %V count %ui version: %ui",
                   &msg->name, msg->count, sh->version);

    FUNC5(&sh->msg_queue, &msg->queue);

    return NGX_OK;

failed:

    if (msg) {
        FUNC0(shpool, msg);
    }

    return NGX_ERROR;
}