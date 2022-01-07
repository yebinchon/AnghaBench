
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int * pool; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_pool_t ;


 int * PoolAlloc (TYPE_1__*,unsigned int) ;

__attribute__((used)) static picture_pool_t *Pool(vout_display_t *vd, unsigned requested_count)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->pool == ((void*)0))
        sys->pool = PoolAlloc(vd, requested_count);
    return sys->pool;
}
