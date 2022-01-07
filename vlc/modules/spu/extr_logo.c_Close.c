
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int list; int lock; scalar_t__ p_blend; } ;
typedef TYPE_2__ filter_sys_t ;


 int LogoCallback ;
 int LogoListUnload (int *) ;
 int filter_DeleteBlend (scalar_t__) ;
 int free (TYPE_2__*) ;
 scalar_t__* ppsz_filter_callbacks ;
 int var_DelCallback (TYPE_1__*,scalar_t__,int ,TYPE_2__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    for( int i = 0; ppsz_filter_callbacks[i]; i++ )
        var_DelCallback( p_filter, ppsz_filter_callbacks[i],
                         LogoCallback, p_sys );

    if( p_sys->p_blend )
        filter_DeleteBlend( p_sys->p_blend );

    vlc_mutex_destroy( &p_sys->lock );
    LogoListUnload( &p_sys->list );
    free( p_sys );
}
