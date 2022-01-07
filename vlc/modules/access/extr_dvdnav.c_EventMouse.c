
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int i_y; int i_x; } ;
typedef TYPE_1__ vlc_mouse_t ;
typedef int pci_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_13__ {TYPE_1__ oldmouse; int dvdnav; int event_lock; } ;
typedef TYPE_3__ demux_sys_t ;


 int ButtonUpdate (TYPE_2__*,int) ;
 int MOUSE_BUTTON_LEFT ;
 int * dvdnav_get_current_nav_pci (int ) ;
 int dvdnav_mouse_activate (int ,int *,int ,int ) ;
 int dvdnav_mouse_select (int ,int *,int ,int ) ;
 scalar_t__ vlc_mouse_HasMoved (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ vlc_mouse_HasPressed (TYPE_1__*,TYPE_1__ const*,int ) ;
 int vlc_mouse_Init (TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void EventMouse( const vlc_mouse_t *newmouse, void *p_data )
{
    demux_t *p_demux = p_data;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( !newmouse )
    {
        vlc_mouse_Init( &p_sys->oldmouse );
        return;
    }


    pci_t *pci = dvdnav_get_current_nav_pci( p_sys->dvdnav );

    if( vlc_mouse_HasMoved( &p_sys->oldmouse, newmouse ) )
        dvdnav_mouse_select( p_sys->dvdnav, pci, newmouse->i_x, newmouse->i_y );
    if( vlc_mouse_HasPressed( &p_sys->oldmouse, newmouse, MOUSE_BUTTON_LEFT ) )
    {
        vlc_mutex_lock( &p_sys->event_lock );
        ButtonUpdate( p_demux, 1 );
        vlc_mutex_unlock( &p_sys->event_lock );
        dvdnav_mouse_activate( p_sys->dvdnav, pci, newmouse->i_x, newmouse->i_y );
    }
    p_sys->oldmouse = *newmouse;
}
