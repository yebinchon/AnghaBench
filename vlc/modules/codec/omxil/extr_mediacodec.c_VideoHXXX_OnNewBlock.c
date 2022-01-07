
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int i_pps_count; int i_sps_count; int i_vps_count; } ;
struct TYPE_15__ {int i_pps_count; int i_sps_count; } ;
struct hxxx_helper {TYPE_4__ hevc; TYPE_3__ h264; int * (* pf_process_block ) (struct hxxx_helper*,int *,int*) ;} ;
struct TYPE_14__ {int i_codec; } ;
struct TYPE_18__ {TYPE_2__ fmt_in; TYPE_7__* p_sys; } ;
typedef TYPE_6__ decoder_t ;
struct TYPE_17__ {scalar_t__ b_started; } ;
struct TYPE_13__ {struct hxxx_helper hh; } ;
struct TYPE_19__ {int i_decode_flags; TYPE_5__ api; scalar_t__ b_adaptive; TYPE_1__ video; } ;
typedef TYPE_7__ decoder_sys_t ;
typedef int block_t ;


 int DECODE_FLAG_DRAIN ;
 int DECODE_FLAG_RESTART ;
 int H264SetCSD (TYPE_6__*,int*) ;
 int HEVCSetCSD (TYPE_6__*,int*) ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int Video_OnNewBlock (TYPE_6__*,int **) ;
 int msg_Err (TYPE_6__*,char*) ;
 int * stub1 (struct hxxx_helper*,int *,int*) ;

__attribute__((used)) static int VideoHXXX_OnNewBlock(decoder_t *p_dec, block_t **pp_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    struct hxxx_helper *hh = &p_sys->video.hh;
    bool b_config_changed = 0;
    bool *p_config_changed = p_sys->b_adaptive ? ((void*)0) : &b_config_changed;

    *pp_block = hh->pf_process_block(hh, *pp_block, p_config_changed);
    if (!*pp_block)
        return 0;
    if (b_config_changed)
    {
        bool b_size_changed;
        int i_ret;
        switch (p_dec->fmt_in.i_codec)
        {
        case 129:
            if (hh->h264.i_sps_count > 0 || hh->h264.i_pps_count > 0)
                i_ret = H264SetCSD(p_dec, &b_size_changed);
            else
                i_ret = VLC_EGENERIC;
            break;
        case 128:
            if (hh->hevc.i_vps_count > 0 || hh->hevc.i_sps_count > 0 ||
                hh->hevc.i_pps_count > 0 )
                i_ret = HEVCSetCSD(p_dec, &b_size_changed);
            else
                i_ret = VLC_EGENERIC;
            break;
        }
        if (i_ret != VLC_SUCCESS)
            return i_ret;
        if (b_size_changed || !p_sys->api.b_started)
        {
            if (p_sys->api.b_started)
                msg_Err(p_dec, "SPS/PPS changed during playback and "
                        "video size are different. Restart it !");
            p_sys->i_decode_flags |= DECODE_FLAG_RESTART;
        } else
        {
            msg_Err(p_dec, "SPS/PPS changed during playback. Drain it");
            p_sys->i_decode_flags |= DECODE_FLAG_DRAIN;
        }
    }

    return Video_OnNewBlock(p_dec, pp_block);
}
