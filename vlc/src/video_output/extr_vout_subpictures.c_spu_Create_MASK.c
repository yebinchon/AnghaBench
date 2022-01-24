#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct spu_channel {int dummy; } ;
struct TYPE_14__ {TYPE_3__* p; } ;
typedef  TYPE_2__ spu_t ;
struct TYPE_13__ {int /*<<< orphan*/  thread; scalar_t__* chroma_list; int /*<<< orphan*/ * p_processed; int /*<<< orphan*/  fmtsrc; int /*<<< orphan*/  fmtdst; int /*<<< orphan*/  vector; int /*<<< orphan*/  output_cond; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; } ;
struct TYPE_15__ {int last_sort_date; TYPE_1__ prerender; int /*<<< orphan*/ * vout; void* scale_yuvp; void* scale; int /*<<< orphan*/  text; void* filter_chain; void* source_chain; int /*<<< orphan*/  textlock; int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/ * filter_chain_update; int /*<<< orphan*/ * source_chain_update; void* secondary_alignment; void* secondary_margin; void* margin; int /*<<< orphan*/  lock; int /*<<< orphan*/  channels; } ;
typedef  TYPE_3__ spu_private_t ;

/* Variables and functions */
 size_t SPU_CHROMALIST_COUNT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VLC_CODEC_RGBA ; 
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 int /*<<< orphan*/  VLC_CODEC_YUVP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_VIDEO ; 
 int /*<<< orphan*/  VLC_VOUT_ORDER_PRIMARY ; 
 size_t VOUT_SPU_CHANNEL_OSD_COUNT ; 
 void* FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  spu_PrerenderThread ; 
 int /*<<< orphan*/  FUNC5 (struct spu_channel*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct spu_channel) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,size_t) ; 

spu_t *FUNC16(vlc_object_t *object, vout_thread_t *vout)
{
    spu_t *spu = FUNC10(object,
                                   sizeof(spu_t) + sizeof(spu_private_t),
                                   "subpicture");
    if (!spu)
        return NULL;

    /* Initialize spu fields */
    spu_private_t *sys = spu->p = (spu_private_t*)&spu[1];

    FUNC13(&sys->channels);
    if (!FUNC15(&sys->channels, VOUT_SPU_CHANNEL_OSD_COUNT))
    {
        FUNC12(spu);
        return NULL;
    }
    for (size_t i = 0; i < VOUT_SPU_CHANNEL_OSD_COUNT; ++i)
    {
        struct spu_channel channel;
        FUNC5(&channel, i, VLC_VOUT_ORDER_PRIMARY, NULL);
        FUNC14(&sys->channels, channel);
    }

    /* Initialize private fields */
    FUNC11(&sys->lock);

    sys->margin = FUNC6(spu, "sub-margin");
    sys->secondary_margin = FUNC6(spu, "secondary-sub-margin");

    sys->secondary_alignment = FUNC6(spu,
                                                  "secondary-sub-alignment");

    sys->source_chain_update = NULL;
    sys->filter_chain_update = NULL;
    FUNC11(&sys->filter_chain_lock);
    sys->source_chain = FUNC3(spu, "sub source");
    sys->filter_chain = FUNC3(spu, "sub filter");

    /* Load text and scale module */
    sys->text = FUNC1(spu);
    FUNC11(&sys->textlock);

    /* XXX spu->p_scale is used for all conversion/scaling except yuvp to
     * yuva/rgba */
    sys->scale = FUNC0(FUNC2(spu),
                                             VLC_CODEC_YUVA, VLC_CODEC_RGBA, true);

    /* This one is used for YUVP to YUVA/RGBA without scaling
     * FIXME rename it */
    sys->scale_yuvp = FUNC0(FUNC2(spu),
                                                  VLC_CODEC_YUVP, VLC_CODEC_YUVA, false);


    if (!sys->source_chain || !sys->filter_chain || !sys->text || !sys->scale
     || !sys->scale_yuvp)
    {
        sys->vout = NULL;
        FUNC4(spu);
        FUNC12(spu);
        return NULL;
    }
    /* */
    sys->last_sort_date = -1;
    sys->vout = vout;

    FUNC11(&sys->prerender.lock);
    FUNC9(&sys->prerender.cond);
    FUNC9(&sys->prerender.output_cond);
    FUNC13(&sys->prerender.vector);
    FUNC7(&sys->prerender.fmtdst, 0);
    FUNC7(&sys->prerender.fmtsrc, 0);
    sys->prerender.p_processed = NULL;
    sys->prerender.chroma_list[0] = 0;
    sys->prerender.chroma_list[SPU_CHROMALIST_COUNT] = 0;
    if(FUNC8(&sys->prerender.thread, spu_PrerenderThread, spu, VLC_THREAD_PRIORITY_VIDEO))
    {
        FUNC4(spu);
        FUNC12(spu);
        spu = NULL;
    }

    return spu;
}