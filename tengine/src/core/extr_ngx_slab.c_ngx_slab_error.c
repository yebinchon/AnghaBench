
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_4__ {int log_ctx; } ;
typedef TYPE_1__ ngx_slab_pool_t ;
struct TYPE_5__ {int log; } ;


 TYPE_3__* ngx_cycle ;
 int ngx_log_error (int ,int ,int ,char*,char*,int ) ;

__attribute__((used)) static void
ngx_slab_error(ngx_slab_pool_t *pool, ngx_uint_t level, char *text)
{
    ngx_log_error(level, ngx_cycle->log, 0, "%s%s", text, pool->log_ctx);
}
