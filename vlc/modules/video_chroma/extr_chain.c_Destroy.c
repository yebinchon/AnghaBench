
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int p_chain; scalar_t__ p_video_filter; } ;
typedef TYPE_2__ filter_sys_t ;


 int RestartFilterCallback ;
 int filter_DelProxyCallbacks (TYPE_1__*,scalar_t__,int ) ;
 int filter_chain_Delete (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    if (p_sys->p_video_filter)
        filter_DelProxyCallbacks( p_filter, p_sys->p_video_filter,
                                  RestartFilterCallback );
    filter_chain_Delete( p_sys->p_chain );
    free( p_sys );
}
