
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int has_double_click; } ;
struct TYPE_14__ {int * hwnd; } ;
struct TYPE_16__ {TYPE_2__ info; int * ops; TYPE_1__ handle; int type; TYPE_4__* sys; } ;
typedef TYPE_3__ vout_window_t ;
struct TYPE_17__ {int is_cursor_hidden; int b_ready; int b_done; int * hwnd; int lock; int wait; int thread; scalar_t__ vlc_icon; int cursor_arrow; int class_main; int cursor_empty; int hide_timeout; scalar_t__ button_pressed; } ;
typedef TYPE_4__ vout_window_sys_t ;
typedef scalar_t__ WNDPROC ;
struct TYPE_18__ {int style; int hCursor; int lpszClassName; scalar_t__ hIcon; int hInstance; scalar_t__ lpfnWndProc; int member_0; } ;
typedef TYPE_5__ WNDCLASS ;
typedef int WCHAR ;
typedef int HINSTANCE ;


 int ARRAY_SIZE (int ) ;
 int CS_DBLCLKS ;
 int CS_OWNDC ;
 int Close (TYPE_3__*) ;
 int DestroyIcon (scalar_t__) ;
 int EmptyCursor (int ) ;
 int EventThread ;
 scalar_t__ ExtractIcon (int ,int *,int ) ;
 int GetLastError () ;
 scalar_t__ GetModuleFileName (int *,int *,int) ;
 int GetModuleHandle (int *) ;
 int IDC_ARROW ;
 int LoadCursor (int *,int ) ;
 int MAX_PATH ;
 int RegisterClass (TYPE_5__*) ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_3__*) ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int VOUT_WINDOW_TYPE_HWND ;
 scalar_t__ WinVoutEventProc ;
 int _snwprintf (int ,int ,int ,void*) ;
 int msg_Err (TYPE_3__*,char*,int ) ;
 int ops ;
 scalar_t__ unlikely (int ) ;
 int var_InheritInteger (TYPE_3__*,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_3__*,int ) ;
 int vlc_cond_init (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 TYPE_4__* vlc_obj_calloc (int ,int,int) ;

__attribute__((used)) static int Open(vout_window_t *wnd)
{
    vout_window_sys_t *sys = vlc_obj_calloc(VLC_OBJECT(wnd), 1, sizeof(vout_window_sys_t));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    _snwprintf( sys->class_main, ARRAY_SIZE(sys->class_main),
               TEXT("VLC standalone window %p"), (void *)sys );

    HINSTANCE hInstance = GetModuleHandle(((void*)0));

    WCHAR app_path[MAX_PATH];
    if( GetModuleFileName( ((void*)0), app_path, MAX_PATH ) )
        sys->vlc_icon = ExtractIcon( hInstance, app_path , 0 );

    sys->button_pressed = 0;
    sys->is_cursor_hidden = 0;
    sys->hide_timeout = var_InheritInteger( wnd, "mouse-hide-timeout" );
    sys->cursor_arrow = LoadCursor(((void*)0), IDC_ARROW);
    sys->cursor_empty = EmptyCursor(hInstance);

    WNDCLASS wc = { 0 };

    wc.style = CS_OWNDC|CS_DBLCLKS;
    wc.lpfnWndProc = (WNDPROC)WinVoutEventProc;
    wc.hInstance = hInstance;
    wc.hIcon = sys->vlc_icon;
    wc.lpszClassName = sys->class_main;
    wc.hCursor = sys->cursor_arrow;


    if( !RegisterClass(&wc) )
    {
        if( sys->vlc_icon )
            DestroyIcon( sys->vlc_icon );

        msg_Err( wnd, "RegisterClass FAILED (err=%lu)", GetLastError() );
        return VLC_EGENERIC;
    }
    vlc_mutex_init( &sys->lock );
    vlc_cond_init( &sys->wait );
    sys->b_ready = 0;
    sys->b_done = 0;

    wnd->sys = sys;
    if( vlc_clone( &sys->thread, EventThread, wnd, VLC_THREAD_PRIORITY_LOW ) )
    {
        Close(wnd);
        return VLC_EGENERIC;
    }

    vlc_mutex_lock( &sys->lock );
    while( !sys->b_ready )
    {
        vlc_cond_wait( &sys->wait, &sys->lock );
    }
    if (sys->hwnd == ((void*)0))
    {
        vlc_mutex_unlock( &sys->lock );
        Close(wnd);
        return VLC_EGENERIC;
    }
    vlc_mutex_unlock( &sys->lock );

    wnd->sys = sys;
    wnd->type = VOUT_WINDOW_TYPE_HWND;
    wnd->handle.hwnd = sys->hwnd;
    wnd->ops = &ops;
    wnd->info.has_double_click = 1;
    return VLC_SUCCESS;
}
