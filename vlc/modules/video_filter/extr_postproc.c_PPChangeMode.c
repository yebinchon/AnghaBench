
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pp_mode ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int lock; int * pp_mode; } ;
typedef TYPE_2__ filter_sys_t ;


 int msg_Warn (TYPE_1__*,char*) ;
 int pp_free_mode (int *) ;
 int * pp_get_mode_by_name_and_quality (char const*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void PPChangeMode( filter_t *p_filter, const char *psz_name,
                          int i_quality )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    pp_mode *newmode = ((void*)0), *oldmode;

    if( i_quality > 0 )
    {
         newmode = pp_get_mode_by_name_and_quality( psz_name ? psz_name :
                                                    "default", i_quality );
         if( newmode == ((void*)0) )
         {
             msg_Warn( p_filter, "Error while changing post processing mode. "
                       "Keeping previous mode." );
             return;
        }
    }

    vlc_mutex_lock( &p_sys->lock );
    oldmode = p_sys->pp_mode;
    p_sys->pp_mode = newmode;
    vlc_mutex_unlock( &p_sys->lock );

    pp_free_mode( oldmode );
}
