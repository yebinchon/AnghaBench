
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef int vlc_object_t ;
struct spu_channel {int dummy; } ;
struct TYPE_14__ {TYPE_3__* p; } ;
typedef TYPE_2__ spu_t ;
struct TYPE_13__ {int thread; scalar_t__* chroma_list; int * p_processed; int fmtsrc; int fmtdst; int vector; int output_cond; int cond; int lock; } ;
struct TYPE_15__ {int last_sort_date; TYPE_1__ prerender; int * vout; void* scale_yuvp; void* scale; int text; void* filter_chain; void* source_chain; int textlock; int filter_chain_lock; int * filter_chain_update; int * source_chain_update; void* secondary_alignment; void* secondary_margin; void* margin; int lock; int channels; } ;
typedef TYPE_3__ spu_private_t ;


 size_t SPU_CHROMALIST_COUNT ;
 void* SpuRenderCreateAndLoadScale (int ,int ,int ,int) ;
 int SpuRenderCreateAndLoadText (TYPE_2__*) ;
 int VLC_CODEC_RGBA ;
 int VLC_CODEC_YUVA ;
 int VLC_CODEC_YUVP ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_THREAD_PRIORITY_VIDEO ;
 int VLC_VOUT_ORDER_PRIMARY ;
 size_t VOUT_SPU_CHANNEL_OSD_COUNT ;
 void* filter_chain_NewSPU (TYPE_2__*,char*) ;
 int spu_Cleanup (TYPE_2__*) ;
 int spu_PrerenderThread ;
 int spu_channel_Init (struct spu_channel*,size_t,int ,int *) ;
 void* var_InheritInteger (TYPE_2__*,char*) ;
 int video_format_Init (int *,int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_cond_init (int *) ;
 TYPE_2__* vlc_custom_create (int *,int,char*) ;
 int vlc_mutex_init (int *) ;
 int vlc_object_delete (TYPE_2__*) ;
 int vlc_vector_init (int *) ;
 int vlc_vector_push (int *,struct spu_channel) ;
 int vlc_vector_reserve (int *,size_t) ;

spu_t *spu_Create(vlc_object_t *object, vout_thread_t *vout)
{
    spu_t *spu = vlc_custom_create(object,
                                   sizeof(spu_t) + sizeof(spu_private_t),
                                   "subpicture");
    if (!spu)
        return ((void*)0);


    spu_private_t *sys = spu->p = (spu_private_t*)&spu[1];

    vlc_vector_init(&sys->channels);
    if (!vlc_vector_reserve(&sys->channels, VOUT_SPU_CHANNEL_OSD_COUNT))
    {
        vlc_object_delete(spu);
        return ((void*)0);
    }
    for (size_t i = 0; i < VOUT_SPU_CHANNEL_OSD_COUNT; ++i)
    {
        struct spu_channel channel;
        spu_channel_Init(&channel, i, VLC_VOUT_ORDER_PRIMARY, ((void*)0));
        vlc_vector_push(&sys->channels, channel);
    }


    vlc_mutex_init(&sys->lock);

    sys->margin = var_InheritInteger(spu, "sub-margin");
    sys->secondary_margin = var_InheritInteger(spu, "secondary-sub-margin");

    sys->secondary_alignment = var_InheritInteger(spu,
                                                  "secondary-sub-alignment");

    sys->source_chain_update = ((void*)0);
    sys->filter_chain_update = ((void*)0);
    vlc_mutex_init(&sys->filter_chain_lock);
    sys->source_chain = filter_chain_NewSPU(spu, "sub source");
    sys->filter_chain = filter_chain_NewSPU(spu, "sub filter");


    sys->text = SpuRenderCreateAndLoadText(spu);
    vlc_mutex_init(&sys->textlock);



    sys->scale = SpuRenderCreateAndLoadScale(VLC_OBJECT(spu),
                                             VLC_CODEC_YUVA, VLC_CODEC_RGBA, 1);



    sys->scale_yuvp = SpuRenderCreateAndLoadScale(VLC_OBJECT(spu),
                                                  VLC_CODEC_YUVP, VLC_CODEC_YUVA, 0);


    if (!sys->source_chain || !sys->filter_chain || !sys->text || !sys->scale
     || !sys->scale_yuvp)
    {
        sys->vout = ((void*)0);
        spu_Cleanup(spu);
        vlc_object_delete(spu);
        return ((void*)0);
    }

    sys->last_sort_date = -1;
    sys->vout = vout;

    vlc_mutex_init(&sys->prerender.lock);
    vlc_cond_init(&sys->prerender.cond);
    vlc_cond_init(&sys->prerender.output_cond);
    vlc_vector_init(&sys->prerender.vector);
    video_format_Init(&sys->prerender.fmtdst, 0);
    video_format_Init(&sys->prerender.fmtsrc, 0);
    sys->prerender.p_processed = ((void*)0);
    sys->prerender.chroma_list[0] = 0;
    sys->prerender.chroma_list[SPU_CHROMALIST_COUNT] = 0;
    if(vlc_clone(&sys->prerender.thread, spu_PrerenderThread, spu, VLC_THREAD_PRIORITY_VIDEO))
    {
        spu_Cleanup(spu);
        vlc_object_delete(spu);
        spu = ((void*)0);
    }

    return spu;
}
