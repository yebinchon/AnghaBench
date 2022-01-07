
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_slab_pool_t ;
struct TYPE_7__ {TYPE_3__* data; } ;
struct TYPE_6__ {TYPE_3__* data; } ;
struct TYPE_8__ {TYPE_2__ content; TYPE_1__ name; struct TYPE_8__* pid; } ;
typedef TYPE_3__ ngx_dyups_msg_t ;


 int ngx_slab_free_locked (int *,TYPE_3__*) ;

__attribute__((used)) static void
ngx_dyups_destroy_msg(ngx_slab_pool_t *shpool, ngx_dyups_msg_t *msg)
{
    if (msg->pid) {
        ngx_slab_free_locked(shpool, msg->pid);
    }

    if (msg->name.data) {
        ngx_slab_free_locked(shpool, msg->name.data);
    }

    if (msg->content.data) {
        ngx_slab_free_locked(shpool, msg->content.data);
    }

    ngx_slab_free_locked(shpool, msg);
}
