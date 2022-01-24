#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;int /*<<< orphan*/  control; int /*<<< orphan*/  display; int /*<<< orphan*/ * prepare; int /*<<< orphan*/  pool; TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_15__ {int forced_drm_fourcc; scalar_t__ vlc_fourcc; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  drm_fourcc; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vout_display_cfg_t ;
typedef  int /*<<< orphan*/  vlc_video_context ;
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_16__ {scalar_t__ i_chroma; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_visible_width; int /*<<< orphan*/  i_width; } ;
typedef  TYPE_3__ video_format_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Display ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  Pool ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 char* FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC11(vout_display_t *vd, const vout_display_cfg_t *cfg,
                video_format_t *fmtp, vlc_video_context *context)
{
    vout_display_sys_t *sys;
    vlc_fourcc_t local_vlc_chroma;
    uint32_t local_drm_chroma;
    video_format_t fmt = {};
    char *chroma;

    if (FUNC10(cfg))
        return VLC_EGENERIC;

    /*
     * Allocate instance and initialize some members
     */
    vd->sys = sys = FUNC9(FUNC3(vd), 1, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;

    chroma = FUNC6(vd, "kms-vlc-chroma");
    if (chroma) {
        local_vlc_chroma = FUNC8(VIDEO_ES, chroma);

        if (local_vlc_chroma) {
            sys->vlc_fourcc = local_vlc_chroma;
            FUNC5(vd, "Forcing VLC to use chroma '%4s'", chroma);
         } else {
            sys->vlc_fourcc = fmtp->i_chroma;
            FUNC5(vd, "Chroma %4s invalid, using default", chroma);
         }

        FUNC4(chroma);
        chroma = NULL;
    } else {
        sys->vlc_fourcc = fmtp->i_chroma;
        FUNC5(vd, "Chroma not defined, using default");
    }

    chroma = FUNC6(vd, "kms-drm-chroma");
    if (chroma) {
        local_drm_chroma = FUNC2(chroma[0], chroma[1], chroma[2],
                                      chroma[3]);

        if (local_drm_chroma) {
            sys->forced_drm_fourcc = true;
            sys->drm_fourcc = local_drm_chroma;
            FUNC5(vd, "Setting DRM chroma to '%4s'", chroma);
        }
        else
            FUNC5(vd, "Chroma %4s invalid, using default", chroma);

        FUNC4(chroma);
        chroma = NULL;
    }

    if (FUNC1(vd) != VLC_SUCCESS) {
        FUNC0(vd);
        return VLC_EGENERIC;
    }

    FUNC7(&fmt, fmtp);

    fmt.i_width = fmt.i_visible_width  = sys->width;
    fmt.i_height = fmt.i_visible_height = sys->height;
    fmt.i_chroma = sys->vlc_fourcc;
    *fmtp = fmt;

    vd->pool    = Pool;
    vd->prepare = NULL;
    vd->display = Display;
    vd->control = Control;
    vd->close = Close;

    (void) context;
    return VLC_SUCCESS;
}