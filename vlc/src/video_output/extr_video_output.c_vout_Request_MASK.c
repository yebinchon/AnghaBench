#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* p; } ;
typedef  TYPE_1__ vout_thread_t ;
struct TYPE_17__ {float rate; scalar_t__ spu; int /*<<< orphan*/  thread; int /*<<< orphan*/  original; scalar_t__ delay; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * display; } ;
typedef  TYPE_2__ vout_thread_sys_t ;
struct TYPE_18__ {int /*<<< orphan*/ * clock; int /*<<< orphan*/ * fmt; TYPE_1__* vout; } ;
typedef  TYPE_3__ vout_configuration_t ;
typedef  int /*<<< orphan*/  vlc_video_context ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  input_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  Thread ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

int FUNC15(const vout_configuration_t *cfg, vlc_video_context *vctx, input_thread_t *input)
{
    vout_thread_t *vout = cfg->vout;
    vout_thread_sys_t *sys = vout->p;

    FUNC2(cfg->fmt != NULL);
    FUNC2(cfg->clock != NULL);

    if (!FUNC0(cfg->fmt))
        /* don't stop the display and keep sys->original */
        return -1;

    video_format_t original;
    FUNC1(&original, cfg->fmt);

    if (FUNC7(vout, &original) == 0)
    {
        FUNC5(&original);
        return 0;
    }

    if (FUNC9(vout, &original, NULL) != 0)
    {
        /* the window was not enabled, nor the display started */
        FUNC3(vout, "failed to enable window");
        FUNC5(&original);
        return -1;
    }

    if (sys->display != NULL)
        FUNC14(vout);

    FUNC11(vout);

    sys->original = original;

    sys->delay = 0;
    sys->rate = 1.f;
    sys->clock = cfg->clock;
    sys->delay = 0;

    if (FUNC13(vout, vctx, cfg))
    {
        FUNC3(vout, "video output display creation failed");
        FUNC5(&sys->original);
        FUNC8(vout);
        return -1;
    }
    if (FUNC6(&sys->thread, Thread, vout, VLC_THREAD_PRIORITY_OUTPUT)) {
        FUNC12(vout);
        FUNC8(vout);
        return -1;
    }

    if (input != NULL && sys->spu)
        FUNC4(sys->spu, input);
    FUNC10(vout);
    return 0;
}