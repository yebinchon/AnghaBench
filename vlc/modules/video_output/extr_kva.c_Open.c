
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_7__ {scalar_t__ i_result; int ack_event; int tid; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef int video_format_t ;
struct open_init {int * fmtp; int const* cfg; TYPE_1__* vd; } ;


 int DosCloseEventSem (int ) ;
 int DosCreateEventSem (int *,int *,int ,int ) ;
 int DosWaitEventSem (int ,int ) ;
 int FALSE ;
 int PMThread ;
 int SEM_INDEFINITE_WAIT ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int _beginthread (int ,int *,int,struct open_init*) ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static int Open ( vout_display_t *vd, const vout_display_cfg_t *cfg,
                  video_format_t *fmtp, vlc_video_context *context )
{
    vout_display_sys_t *sys;
    struct open_init init = {
        .vd = vd,
        .cfg = cfg,
        .fmtp = fmtp,
    };
    VLC_UNUSED(context);

    vd->sys = sys = calloc( 1, sizeof( *sys ));
    if( !sys )
        return VLC_ENOMEM;

    DosCreateEventSem( ((void*)0), &sys->ack_event, 0, FALSE );

    sys->tid = _beginthread( PMThread, ((void*)0), 1024 * 1024, &init );
    DosWaitEventSem( sys->ack_event, SEM_INDEFINITE_WAIT );

    if( sys->i_result != VLC_SUCCESS )
    {
        DosCloseEventSem( sys->ack_event );

        free( sys );

        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
