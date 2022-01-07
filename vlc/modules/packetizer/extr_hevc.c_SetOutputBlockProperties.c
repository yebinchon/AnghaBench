
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {scalar_t__ pts; int * p_timing; int dts; scalar_t__ p_active_sps; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_8__ {scalar_t__ i_length; int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_AU_END ;
 scalar_t__ const VLC_TICK_INVALID ;
 scalar_t__ const date_Get (int *) ;
 int date_Increment (int *,int ) ;
 int hevc_get_num_clock_ts (scalar_t__,int *) ;
 int hevc_release_sei_pic_timing (int *) ;

__attribute__((used)) static void SetOutputBlockProperties(decoder_t *p_dec, block_t *p_output)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if(p_sys->p_active_sps)
    {
        uint8_t i_num_clock_ts = hevc_get_num_clock_ts(p_sys->p_active_sps,
                                                       p_sys->p_timing);
        const vlc_tick_t i_start = date_Get(&p_sys->dts);
        if( i_start != VLC_TICK_INVALID )
        {
            date_Increment(&p_sys->dts, i_num_clock_ts);
            p_output->i_length = date_Get(&p_sys->dts) - i_start;
        }
        p_sys->pts = VLC_TICK_INVALID;
    }
    p_output->i_flags &= ~BLOCK_FLAG_AU_END;
    hevc_release_sei_pic_timing(p_sys->p_timing);
    p_sys->p_timing = ((void*)0);
}
