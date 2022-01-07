
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int i_int; int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_10__ {int i_repeat; int i_alpha; } ;
typedef TYPE_2__ logo_list_t ;
struct TYPE_11__ {int b_spu_update; int lock; int i_pos; int i_pos_y; int i_pos_x; TYPE_2__ list; } ;
typedef TYPE_3__ filter_sys_t ;


 int LogoListLoad (int *,TYPE_2__*,int ) ;
 int LogoListUnload (TYPE_2__*) ;
 int VLC_CLIP (int ,int ,int) ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_1__) ;
 int strcmp (char const*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int LogoCallback( vlc_object_t *p_this, char const *psz_var,
                         vlc_value_t oldval, vlc_value_t newval, void *p_data )
{
    VLC_UNUSED(oldval);
    filter_sys_t *p_sys = (filter_sys_t *)p_data;
    logo_list_t *p_list = &p_sys->list;

    vlc_mutex_lock( &p_sys->lock );
    if( !strcmp( psz_var, "logo-file" ) )
    {
        LogoListUnload( p_list );
        LogoListLoad( p_this, p_list, newval.psz_string );
    }
    else if ( !strcmp( psz_var, "logo-x" ) )
    {
        p_sys->i_pos_x = newval.i_int;
    }
    else if ( !strcmp( psz_var, "logo-y" ) )
    {
        p_sys->i_pos_y = newval.i_int;
    }
    else if ( !strcmp( psz_var, "logo-position" ) )
    {
        p_sys->i_pos = newval.i_int;
    }
    else if ( !strcmp( psz_var, "logo-opacity" ) )
    {
        p_list->i_alpha = VLC_CLIP( newval.i_int, 0, 255 );
    }
    else if ( !strcmp( psz_var, "logo-repeat" ) )
    {
        p_list->i_repeat = newval.i_int;
    }
    p_sys->b_spu_update = 1;
    vlc_mutex_unlock( &p_sys->lock );

    return VLC_SUCCESS;
}
