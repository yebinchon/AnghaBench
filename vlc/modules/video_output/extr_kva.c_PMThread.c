
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_18__ {int close; int control; int display; int prepare; TYPE_1__* cfg; TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_14__ {int ulMode; } ;
struct TYPE_19__ {scalar_t__ frame; scalar_t__ client; int ack_event; int i_result; int hab; int hmq; scalar_t__ is_mouse_hidden; int p_old_frame; TYPE_3__* parent_window; TYPE_10__ kvac; scalar_t__ parent; int b_fixt23; } ;
typedef TYPE_5__ vout_display_sys_t ;
typedef int vout_display_cfg_t ;
typedef int video_format_t ;
struct open_init {int * fmtp; int * cfg; TYPE_4__* vd; } ;
typedef int ULONG ;
struct TYPE_16__ {scalar_t__ hwnd; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_2__ handle; } ;
struct TYPE_15__ {TYPE_3__* window; } ;
typedef int QMSG ;
typedef int PVOID ;
typedef scalar_t__ HWND ;


 int COLOR_KEY ;
 int CS_MOVENOTIFY ;
 int CS_SIZEREDRAW ;
 int Close ;
 int CloseDisplay (TYPE_4__*) ;
 int Control ;
 int Display ;
 int DosPostEventSem (int ) ;
 int FALSE ;
 int FCF_MINMAX ;
 int FCF_SIZEBORDER ;
 int FCF_SYSMENU ;
 int FCF_TASKLIST ;
 int FCF_TITLEBAR ;
 scalar_t__ HWND_DESKTOP ;
 int KVAM_AUTO ;
 int KVAM_DIVE ;
 int KVAM_SNAP ;
 int KVAM_VMAN ;
 int KVAM_WO ;
 int MCW_EM ;
 int MorphToPM () ;
 int MyFrameWndProc ;
 scalar_t__ NULLHANDLE ;
 scalar_t__ OpenDisplay (TYPE_4__*,int *) ;
 int Prepare ;
 int QWL_STYLE ;
 int TRUE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VOUT_WINDOW_TYPE_HWND ;
 int WC_VLC_KVA ;
 int WS_CLIPCHILDREN ;
 int WS_VISIBLE ;
 int WinCreateMsgQueue (int ,int ) ;
 scalar_t__ WinCreateStdWindow (scalar_t__,int ,int*,int ,char*,long,scalar_t__,int,scalar_t__*) ;
 int WinDestroyMsgQueue (int ) ;
 int WinDestroyWindow (scalar_t__) ;
 int WinDispatchMsg (int ,int *) ;
 scalar_t__ WinGetMsg (int ,int *,scalar_t__,int ,int ) ;
 int WinInitialize (int ) ;
 int WinQueryWindowULong (scalar_t__,int ) ;
 int WinRegisterClass (int ,int ,int ,int,int) ;
 int WinSetVisibleRegionNotify (scalar_t__,int ) ;
 int WinSetWindowPtr (scalar_t__,int ,TYPE_4__*) ;
 int WinSetWindowULong (scalar_t__,int ,int) ;
 int WinShowPointer (scalar_t__,int ) ;
 int WinSubclassWindow (scalar_t__,int ) ;
 int WinTerminate (int ) ;
 int WndProc ;
 int _control87 (int ,int ) ;
 int free (char*) ;
 int kvaCaps (TYPE_10__*) ;
 int kvaDisableScreenSaver () ;
 int kvaDone () ;
 int kvaEnableScreenSaver () ;
 scalar_t__ kvaInit (int,scalar_t__,int ) ;
 int msg_Dbg (TYPE_4__*,char*,int ) ;
 int msg_Err (TYPE_4__*,char*) ;
 int * psz_video_mode ;
 scalar_t__ strcmp (char*,char*) ;
 int var_CreateGetBool (TYPE_4__*,char*) ;
 char* var_CreateGetString (TYPE_4__*,char*) ;
 int video_format_ApplyRotation (int *,int *) ;

__attribute__((used)) static void PMThread( void *arg )
{
    struct open_init *init = ( struct open_init * )arg;
    vout_display_t *vd = init->vd;
    vout_display_sys_t * sys = vd->sys;
    const vout_display_cfg_t * cfg = init->cfg;
    video_format_t *fmtp = init->fmtp;
    ULONG i_frame_flags;
    QMSG qm;
    char *psz_mode;
    ULONG i_kva_mode;


    video_format_t fmt;
    video_format_ApplyRotation(&fmt, fmtp);


    MorphToPM();

    sys->hab = WinInitialize( 0 );
    sys->hmq = WinCreateMsgQueue( sys->hab, 0);

    WinRegisterClass( sys->hab,
                      WC_VLC_KVA,
                      WndProc,
                      CS_SIZEREDRAW | CS_MOVENOTIFY,
                      sizeof( PVOID ));

    sys->b_fixt23 = var_CreateGetBool( vd, "kva-fixt23");

    if( !sys->b_fixt23 && vd->cfg->window->type == VOUT_WINDOW_TYPE_HWND )

        sys->parent_window = vd->cfg->window;

    if( sys->parent_window )
    {
        sys->parent = ( HWND )sys->parent_window->handle.hwnd;

        ULONG i_style = WinQueryWindowULong( sys->parent, QWL_STYLE );
        WinSetWindowULong( sys->parent, QWL_STYLE,
                           i_style | WS_CLIPCHILDREN );

        i_frame_flags = FCF_TITLEBAR;
    }
    else
    {
        sys->parent = HWND_DESKTOP;

        i_frame_flags = FCF_SYSMENU | FCF_TITLEBAR | FCF_MINMAX |
                        FCF_SIZEBORDER | FCF_TASKLIST;
    }

    sys->frame =
        WinCreateStdWindow( sys->parent,
                            WS_VISIBLE,
                            &i_frame_flags,
                            WC_VLC_KVA,
                            "",
                            0L,
                            NULLHANDLE,
                            1,
                            &sys->client );

    if( sys->frame == NULLHANDLE )
    {
        msg_Err( vd, "cannot create a frame window");

        goto exit_frame;
    }

    WinSetWindowPtr( sys->client, 0, vd );

    if( !sys->parent_window )
    {
        WinSetWindowPtr( sys->frame, 0, vd );
        sys->p_old_frame = WinSubclassWindow( sys->frame, MyFrameWndProc );
    }

    psz_mode = var_CreateGetString( vd, "kva-video-mode" );

    i_kva_mode = KVAM_AUTO;
    if( strcmp( psz_mode, "snap" ) == 0 )
        i_kva_mode = KVAM_SNAP;
    else if( strcmp( psz_mode, "wo" ) == 0 )
        i_kva_mode = KVAM_WO;
    else if( strcmp( psz_mode, "vman" ) == 0 )
        i_kva_mode = KVAM_VMAN;
    else if( strcmp( psz_mode, "dive" ) == 0 )
        i_kva_mode = KVAM_DIVE;

    free( psz_mode );

    if( kvaInit( i_kva_mode, sys->client, COLOR_KEY ))
    {
        msg_Err( vd, "cannot initialize KVA");

        goto exit_kva_init;
    }

    kvaCaps( &sys->kvac );

    msg_Dbg( vd, "selected video mode = %s",
             psz_video_mode[ sys->kvac.ulMode - 1 ]);

    if( OpenDisplay( vd, &fmt ) )
    {
        msg_Err( vd, "cannot open display");

        goto exit_open_display;
    }

    kvaDisableScreenSaver();


    *fmtp = fmt;

    vd->prepare = Prepare;
    vd->display = Display;
    vd->control = Control;
    vd->close = Close;


    _control87(MCW_EM, MCW_EM);

    sys->i_result = VLC_SUCCESS;
    DosPostEventSem( sys->ack_event );

    if( !sys->parent_window )
        WinSetVisibleRegionNotify( sys->frame, TRUE );

    while( WinGetMsg( sys->hab, &qm, NULLHANDLE, 0, 0 ))
        WinDispatchMsg( sys->hab, &qm );

    if( !sys->parent_window )
        WinSetVisibleRegionNotify( sys->frame, FALSE );

    kvaEnableScreenSaver();

    CloseDisplay( vd );



exit_open_display :
    kvaDone();

exit_kva_init :
    if( !sys->parent_window )
        WinSubclassWindow( sys->frame, sys->p_old_frame );

    WinDestroyWindow( sys->frame );

exit_frame :
    if( sys->is_mouse_hidden )
        WinShowPointer( HWND_DESKTOP, TRUE );

    WinDestroyMsgQueue( sys->hmq );
    WinTerminate( sys->hab );

    sys->i_result = VLC_EGENERIC;
    DosPostEventSem( sys->ack_event );
}
