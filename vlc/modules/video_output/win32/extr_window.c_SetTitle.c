
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_6__ {char* psz_title; int hwnd; int lock; } ;
typedef TYPE_2__ vout_window_sys_t ;


 int PostMessage (int ,int ,int ,int ) ;
 int WM_VLC_CHANGE_TEXT ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* var_InheritString (TYPE_1__*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void SetTitle(vout_window_t *wnd, const char *title)
{
    vout_window_sys_t *sys = wnd->sys;
    char *psz_title = var_InheritString( wnd, "video-title" );
    if( !psz_title )
        psz_title = strdup( title );
    if( !psz_title )
        return;

    vlc_mutex_lock( &sys->lock );
    free( sys->psz_title );
    sys->psz_title = psz_title;
    vlc_mutex_unlock( &sys->lock );

    PostMessage( sys->hwnd, WM_VLC_CHANGE_TEXT, 0, 0 );
}
