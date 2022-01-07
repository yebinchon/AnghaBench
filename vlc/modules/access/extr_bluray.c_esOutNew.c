
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int * cbs; } ;
typedef TYPE_3__ es_out_t ;
struct TYPE_9__ {int * channels; int * p_video_es; } ;
struct TYPE_8__ {int i_audio_pid; int i_spu_pid; } ;
struct TYPE_11__ {int b_discontinuity; int b_disable_output; int b_entered_recycling; int b_restart_decoders_on_reuse; int b_lowdelay; TYPE_3__ es_out; int lock; TYPE_2__ overlay; TYPE_1__ selected; void* priv; int * p_obj; TYPE_3__* p_dst_out; int es; } ;
typedef TYPE_4__ bluray_esout_priv_t ;


 size_t MAX_OVERLAY ;
 int VOUT_SPU_CHANNEL_INVALID ;
 int bluray_esOutCallbacks ;
 TYPE_4__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_array_init (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static es_out_t *esOutNew(vlc_object_t *p_obj, es_out_t *p_dst_out, void *priv)
{
    bluray_esout_priv_t *esout_priv = malloc(sizeof(*esout_priv));
    if (unlikely(esout_priv == ((void*)0)))
        return ((void*)0);

    vlc_array_init(&esout_priv->es);
    esout_priv->p_dst_out = p_dst_out;
    esout_priv->p_obj = p_obj;
    esout_priv->priv = priv;
    esout_priv->es_out.cbs = &bluray_esOutCallbacks;
    esout_priv->b_discontinuity = 0;
    esout_priv->b_disable_output = 0;
    esout_priv->b_entered_recycling = 0;
    esout_priv->b_restart_decoders_on_reuse = 1;
    esout_priv->b_lowdelay = 0;
    esout_priv->selected.i_audio_pid = -1;
    esout_priv->selected.i_spu_pid = -1;
    esout_priv->overlay.p_video_es = ((void*)0);
    for(size_t i=0; i<MAX_OVERLAY; i++)
        esout_priv->overlay.channels[i] = VOUT_SPU_CHANNEL_INVALID;
    vlc_mutex_init(&esout_priv->lock);
    return &esout_priv->es_out;
}
