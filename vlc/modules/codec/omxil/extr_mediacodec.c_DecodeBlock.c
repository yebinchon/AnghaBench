
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_19__ {int i_quirks; scalar_t__ b_started; } ;
struct TYPE_21__ {int (* pf_on_new_block ) (TYPE_2__*,TYPE_4__**) ;int i_decode_flags; int lock; scalar_t__ b_has_format; scalar_t__ b_aborted; TYPE_1__ api; scalar_t__ b_output_ready; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_22__ {int i_flags; } ;
typedef TYPE_4__ block_t ;


 int AbortDecoderLocked (TYPE_2__*) ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_INTERLACED_MASK ;
 int DECODE_FLAG_DRAIN ;
 int DECODE_FLAG_RESTART ;
 int DecodeFlushLocked (TYPE_2__*) ;
 int MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED ;
 int QueueBlockLocked (TYPE_2__*,TYPE_4__*,int) ;
 int StartMediaCodec (TYPE_2__*) ;
 int StopMediaCodec (TYPE_2__*) ;
 int VLCDEC_ECRITICAL ;
 int VLCDEC_RELOAD ;
 int VLCDEC_SUCCESS ;


 int VLC_VAR_VOID ;
 int block_Release (TYPE_4__*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int stub1 (TYPE_2__*,TYPE_4__**) ;
 int var_Create (TYPE_2__*,char*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int DecodeBlock(decoder_t *p_dec, block_t *p_in_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i_ret;

    vlc_mutex_lock(&p_sys->lock);

    if (p_sys->b_aborted)
    {
        if (p_sys->b_has_format)
            goto end;
        else
            goto reload;
    }

    if (p_in_block == ((void*)0))
    {

        msg_Err(p_dec, "Decoder is draining");

        if (p_sys->b_output_ready)
            QueueBlockLocked(p_dec, ((void*)0), 1);
        goto end;
    }

    if (p_in_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED))
    {
        if (p_sys->b_output_ready)
            QueueBlockLocked(p_dec, ((void*)0), 1);
        DecodeFlushLocked(p_dec);
        if (p_sys->b_aborted)
            goto end;
        if (p_in_block->i_flags & BLOCK_FLAG_CORRUPTED)
            goto end;
    }

    if (p_in_block->i_flags & BLOCK_FLAG_INTERLACED_MASK
     && !(p_sys->api.i_quirks & MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED))
    {




        msg_Warn(p_dec, "codec doesn't support interlaced videos");
        goto reload;
    }


    if ((i_ret = p_sys->pf_on_new_block(p_dec, &p_in_block)) != 1)
    {
        if (i_ret != 0)
        {
            AbortDecoderLocked(p_dec);
            msg_Err(p_dec, "pf_on_new_block failed");
        }
        goto end;
    }
    if (p_sys->i_decode_flags & (DECODE_FLAG_DRAIN|DECODE_FLAG_RESTART))
    {
        msg_Warn(p_dec, "Draining from DecodeBlock");
        const bool b_restart = p_sys->i_decode_flags & DECODE_FLAG_RESTART;
        p_sys->i_decode_flags = 0;


        if (p_sys->b_output_ready)
            QueueBlockLocked(p_dec, ((void*)0), 1);
        DecodeFlushLocked(p_dec);
        if (p_sys->b_aborted)
            goto end;

        if (b_restart)
        {
            StopMediaCodec(p_dec);

            int i_ret = StartMediaCodec(p_dec);
            switch (i_ret)
            {
            case 128:
                msg_Warn(p_dec, "Restarted from DecodeBlock");
                break;
            case 129:
                break;
            default:
                msg_Err(p_dec, "StartMediaCodec failed");
                AbortDecoderLocked(p_dec);
                goto end;
            }
        }
    }


    if (p_sys->api.b_started)
        QueueBlockLocked(p_dec, p_in_block, 0);

end:
    if (p_in_block)
        block_Release(p_in_block);


    int ret = p_sys->b_aborted && p_sys->b_has_format ? VLCDEC_ECRITICAL
                                                      : VLCDEC_SUCCESS;
    vlc_mutex_unlock(&p_sys->lock);
    return ret;

reload:
    vlc_mutex_unlock(&p_sys->lock);


    var_Create(p_dec, "mediacodec-failed", VLC_VAR_VOID);
    return VLCDEC_RELOAD;
}
