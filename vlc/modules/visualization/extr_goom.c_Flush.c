
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_vout; } ;
typedef TYPE_1__ goom_thread_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ filter_t ;


 int vout_FlushAll (int ) ;

__attribute__((used)) static void Flush( filter_t *p_filter )
{
    goom_thread_t *p_thread = p_filter->p_sys;
    vout_FlushAll( p_thread->p_vout );
}
