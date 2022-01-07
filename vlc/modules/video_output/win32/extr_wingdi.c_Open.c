
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ projection_mode; } ;
struct TYPE_11__ {int force; } ;
struct TYPE_13__ {int (* close ) (TYPE_3__*) ;int control; int display; int prepare; TYPE_4__* sys; TYPE_2__ source; TYPE_1__ obj; } ;
typedef TYPE_3__ vout_display_t ;
struct TYPE_14__ {int sys; int area; } ;
typedef TYPE_4__ vout_display_sys_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef int video_format_t ;


 int Close (TYPE_3__*) ;
 int CommonInit (TYPE_3__*,int *,int const*) ;
 scalar_t__ CommonWindowInit (int ,int *,int *,int) ;
 int Control ;
 int Display ;
 scalar_t__ Init (TYPE_3__*,int *) ;
 scalar_t__ PROJECTION_MODE_RECTANGULAR ;
 int Prepare ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_3__*) ;
 int VLC_SUCCESS ;
 TYPE_4__* calloc (int,int) ;

__attribute__((used)) static int Open(vout_display_t *vd, const vout_display_cfg_t *cfg,
                video_format_t *fmtp, vlc_video_context *context)
{
    vout_display_sys_t *sys;

    if ( !vd->obj.force && vd->source.projection_mode != PROJECTION_MODE_RECTANGULAR)
        return VLC_EGENERIC;

    vd->sys = sys = calloc(1, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;

    CommonInit(vd, &sys->area, cfg);
    if (CommonWindowInit(VLC_OBJECT(vd), &sys->area, &sys->sys, 0))
        goto error;


    if (Init(vd, fmtp))
        goto error;


    vd->prepare = Prepare;
    vd->display = Display;
    vd->control = Control;
    vd->close = Close;
    return VLC_SUCCESS;

error:
    Close(vd);
    return VLC_EGENERIC;
}
