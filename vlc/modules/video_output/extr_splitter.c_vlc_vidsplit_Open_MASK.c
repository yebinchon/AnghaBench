#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;int /*<<< orphan*/  control; int /*<<< orphan*/  display; int /*<<< orphan*/  prepare; int /*<<< orphan*/  source; TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_21__ {int i_output; TYPE_5__* p_output; int /*<<< orphan*/  fmt; int /*<<< orphan*/ * p_module; } ;
struct TYPE_19__ {struct vlc_vidsplit_part* parts; int /*<<< orphan*/ * pictures; int /*<<< orphan*/  lock; TYPE_4__ splitter; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct TYPE_20__ {int is_display_filled; int /*<<< orphan*/ * window; int /*<<< orphan*/  zoom; int /*<<< orphan*/  align; int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ vout_display_cfg_t ;
typedef  int /*<<< orphan*/  vlc_video_context ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  TYPE_4__ video_splitter_t ;
struct TYPE_22__ {char* psz_module; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_5__ video_splitter_output_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct vlc_vidsplit_part {int width; int height; int /*<<< orphan*/  lock; TYPE_1__* display; int /*<<< orphan*/ * window; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,char*,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,struct vlc_vidsplit_part*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  vlc_vidsplit_Control ; 
 int /*<<< orphan*/  vlc_vidsplit_Display ; 
 int /*<<< orphan*/  vlc_vidsplit_Prepare ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC20 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(vout_display_t *vd,
                             const vout_display_cfg_t *cfg,
                             video_format_t *fmtp, vlc_video_context *ctx)
{
    vlc_object_t *obj = FUNC0(vd);

    if (FUNC20(cfg))
        return VLC_EGENERIC;

    char *name = FUNC4(obj, "video-splitter");
    if (name == NULL)
        return VLC_EGENERIC;

    vout_display_sys_t *sys = FUNC11(obj, sizeof (*sys));
    if (FUNC3(sys == NULL)) {
        FUNC1(name);
        return VLC_ENOMEM;
    }
    vd->sys = sys;

    video_splitter_t *splitter = &sys->splitter;

    FUNC9(&sys->lock);
    FUNC6(&splitter->fmt, &vd->source);

    splitter->p_module = FUNC2(splitter, "video splitter", name, true);
    FUNC1(name);
    if (splitter->p_module == NULL) {
        FUNC5(&splitter->fmt);
        FUNC8(&sys->lock);
        FUNC12(splitter);
        return VLC_EGENERIC;
    }

    sys->pictures = FUNC10(obj, splitter->i_output
                                        * sizeof (*sys->pictures));
    sys->parts = FUNC10(obj,
                                splitter->i_output * sizeof (*sys->parts));
    if (FUNC3(sys->pictures == NULL || sys->parts == NULL)) {
        splitter->i_output = 0;
        FUNC17(vd);
        return VLC_ENOMEM;
    }

    for (int i = 0; i < splitter->i_output; i++) {
        const video_splitter_output_t *output = &splitter->p_output[i];
        vout_display_cfg_t vdcfg = {
            .display = { 0, 0, { 1, 1 } },
            .align = { 0, 0 } /* TODO */,
            .is_display_filled = true,
            .zoom = { 1, 1 },
        };
        const char *modname = output->psz_module;
        struct vlc_vidsplit_part *part = &sys->parts[i];

        FUNC14(&part->lock, 1);
        part->display = NULL;
        part->width = 1;
        part->height = 1;

        part->window = FUNC7(obj, &vdcfg, &output->fmt,
                                                   part);
        if (part->window == NULL) {
            splitter->i_output = i;
            FUNC17(vd);
            return VLC_EGENERIC;
        }

        vdcfg.window = part->window;
        vout_display_t *display = FUNC18(obj, &output->fmt, ctx, &vdcfg,
                                                   modname, NULL);
        if (display == NULL) {
            FUNC22(part->window);
            FUNC21(part->window);
            FUNC13(&part->lock);
            splitter->i_output = i;
            FUNC17(vd);
            return VLC_EGENERIC;
        }

        FUNC16(&part->lock);
        part->display = display;
        FUNC19(display, part->width, part->height);
        FUNC15(&part->lock);
    }

    vd->prepare = vlc_vidsplit_Prepare;
    vd->display = vlc_vidsplit_Display;
    vd->control = vlc_vidsplit_Control;
    vd->close = vlc_vidsplit_Close;
    (void) fmtp;
    return VLC_SUCCESS;
}