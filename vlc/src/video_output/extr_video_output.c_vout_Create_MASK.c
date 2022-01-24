#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {TYPE_9__* p; } ;
typedef  TYPE_8__ vout_thread_t ;
struct TYPE_30__ {int /*<<< orphan*/ * window; } ;
struct TYPE_29__ {int /*<<< orphan*/  lock; } ;
struct TYPE_28__ {void* position; void* timeout; void* show; } ;
struct TYPE_26__ {int /*<<< orphan*/  mode; } ;
struct TYPE_25__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_27__ {TYPE_3__ crop; TYPE_2__ dar; } ;
struct TYPE_24__ {scalar_t__ i_chroma; } ;
struct TYPE_32__ {int dummy; int window_enabled; TYPE_7__ display_cfg; int /*<<< orphan*/  refs; int /*<<< orphan*/  render; int /*<<< orphan*/  window_lock; int /*<<< orphan*/ * splitter_name; int /*<<< orphan*/ * spu; int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; TYPE_6__ filter; void* is_late_dropped; TYPE_5__ title; int /*<<< orphan*/  control; int /*<<< orphan*/  statistic; int /*<<< orphan*/  snapshot; TYPE_4__ source; TYPE_1__ original; } ;
typedef  TYPE_9__ vout_thread_sys_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  VOUT_CROP_NONE ; 
 int /*<<< orphan*/  VOUT_WINDOW_STATE_ABOVE ; 
 int /*<<< orphan*/  VOUT_WINDOW_STATE_BELOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,char*) ; 
 void* FUNC7 (TYPE_8__*,char*) ; 
 void* FUNC8 (TYPE_8__*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_8__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 TYPE_8__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

vout_thread_t *FUNC22(vlc_object_t *object)
{
    vout_thread_t *vout = FUNC13(object);
    if (!vout)
        return NULL;
    vout_thread_sys_t *sys = vout->p;
    sys->dummy = false;

    /* Register the VLC variable and callbacks. On the one hand, the variables
     * must be ready early on because further initializations below depend on
     * some of them. On the other hand, the callbacks depend on said
     * initializations. In practice, this works because the object is not
     * visible and callbacks not triggerable before this function returns the
     * fully initialized object to its caller.
     */
    FUNC15(vout);

    /* Get splitter name if present */
    sys->splitter_name = FUNC2("video-splitter") ?
        FUNC9(vout, "video-splitter") : NULL;
    if (sys->splitter_name != NULL) {
        FUNC5(vout, "window", VLC_VAR_STRING);
        FUNC10(vout, "window", "wdummy");
    }

    sys->original.i_chroma = 0;
    sys->source.dar.num = 0;
    sys->source.dar.den = 0;
    sys->source.crop.mode = VOUT_CROP_NONE;
    sys->snapshot = FUNC19();
    FUNC20(&sys->statistic);

    /* Initialize subpicture unit */
    sys->spu = FUNC7(vout, "spu") || FUNC7(vout, "osd") ?
               FUNC3(vout, vout) : NULL;

    FUNC17(&sys->control);

    sys->title.show     = FUNC7(vout, "video-title-show");
    sys->title.timeout  = FUNC8(vout, "video-title-timeout");
    sys->title.position = FUNC8(vout, "video-title-position");

    FUNC14(vout);

    sys->is_late_dropped = FUNC7(vout, "drop-late-frames");

    FUNC11(&sys->filter.lock);

    /* Display */
    sys->display = NULL;
    FUNC11(&sys->display_lock);

    /* Window */
    sys->display_cfg.window = FUNC18(vout);
    if (sys->display_cfg.window == NULL) {
        if (sys->spu)
            FUNC4(sys->spu);
        FUNC12(vout);
        return NULL;
    }

    if (sys->splitter_name != NULL)
        FUNC6(vout, "window");
    sys->window_enabled = false;
    FUNC11(&sys->window_lock);

    /* Arbitrary initial time */
    FUNC16(&sys->render, 5, FUNC0(10));

    /* */
    FUNC1(&sys->refs, 0);

    if (FUNC7(vout, "video-wallpaper"))
        FUNC21(sys->display_cfg.window, VOUT_WINDOW_STATE_BELOW);
    else if (FUNC7(vout, "video-on-top"))
        FUNC21(sys->display_cfg.window, VOUT_WINDOW_STATE_ABOVE);

    return vout;
}