
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int pf_render; int * p_sys; } ;
typedef TYPE_1__ filter_t ;
typedef int filter_sys_t ;


 int RenderText ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * calloc (int,int) ;
 int g_type_init () ;
 int svg_LoadTemplate (TYPE_1__*) ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    filter_t *p_filter = ( filter_t * )p_this;

    filter_sys_t *p_sys = calloc( 1, sizeof(*p_sys) );
    if( !p_sys )
        return VLC_ENOMEM;
    p_filter->p_sys = p_sys;

    p_filter->pf_render = RenderText;
    svg_LoadTemplate( p_filter );


    g_type_init( );


    return VLC_SUCCESS;
}
