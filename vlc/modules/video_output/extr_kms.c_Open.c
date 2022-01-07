
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int (* close ) (TYPE_1__*) ;int control; int display; int * prepare; int pool; TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_15__ {int forced_drm_fourcc; scalar_t__ vlc_fourcc; int height; int width; int drm_fourcc; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_16__ {scalar_t__ i_chroma; int i_visible_height; int i_height; int i_visible_width; int i_width; } ;
typedef TYPE_3__ video_format_t ;
typedef int uint32_t ;


 int Close (TYPE_1__*) ;
 int Control ;
 int Display ;
 scalar_t__ OpenDisplay (TYPE_1__*) ;
 int Pool ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_FOURCC (char,char,char,char) ;
 int VLC_OBJECT (TYPE_1__*) ;
 scalar_t__ VLC_SUCCESS ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 char* var_InheritString (TYPE_1__*,char*) ;
 int video_format_ApplyRotation (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ vlc_fourcc_GetCodecFromString (int ,char*) ;
 TYPE_2__* vlc_obj_calloc (int ,int,int) ;
 scalar_t__ vout_display_cfg_IsWindowed (int const*) ;

__attribute__((used)) static int Open(vout_display_t *vd, const vout_display_cfg_t *cfg,
                video_format_t *fmtp, vlc_video_context *context)
{
    vout_display_sys_t *sys;
    vlc_fourcc_t local_vlc_chroma;
    uint32_t local_drm_chroma;
    video_format_t fmt = {};
    char *chroma;

    if (vout_display_cfg_IsWindowed(cfg))
        return VLC_EGENERIC;




    vd->sys = sys = vlc_obj_calloc(VLC_OBJECT(vd), 1, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;

    chroma = var_InheritString(vd, "kms-vlc-chroma");
    if (chroma) {
        local_vlc_chroma = vlc_fourcc_GetCodecFromString(VIDEO_ES, chroma);

        if (local_vlc_chroma) {
            sys->vlc_fourcc = local_vlc_chroma;
            msg_Dbg(vd, "Forcing VLC to use chroma '%4s'", chroma);
         } else {
            sys->vlc_fourcc = fmtp->i_chroma;
            msg_Dbg(vd, "Chroma %4s invalid, using default", chroma);
         }

        free(chroma);
        chroma = ((void*)0);
    } else {
        sys->vlc_fourcc = fmtp->i_chroma;
        msg_Dbg(vd, "Chroma not defined, using default");
    }

    chroma = var_InheritString(vd, "kms-drm-chroma");
    if (chroma) {
        local_drm_chroma = VLC_FOURCC(chroma[0], chroma[1], chroma[2],
                                      chroma[3]);

        if (local_drm_chroma) {
            sys->forced_drm_fourcc = 1;
            sys->drm_fourcc = local_drm_chroma;
            msg_Dbg(vd, "Setting DRM chroma to '%4s'", chroma);
        }
        else
            msg_Dbg(vd, "Chroma %4s invalid, using default", chroma);

        free(chroma);
        chroma = ((void*)0);
    }

    if (OpenDisplay(vd) != VLC_SUCCESS) {
        Close(vd);
        return VLC_EGENERIC;
    }

    video_format_ApplyRotation(&fmt, fmtp);

    fmt.i_width = fmt.i_visible_width = sys->width;
    fmt.i_height = fmt.i_visible_height = sys->height;
    fmt.i_chroma = sys->vlc_fourcc;
    *fmtp = fmt;

    vd->pool = Pool;
    vd->prepare = ((void*)0);
    vd->display = Display;
    vd->control = Control;
    vd->close = Close;

    (void) context;
    return VLC_SUCCESS;
}
