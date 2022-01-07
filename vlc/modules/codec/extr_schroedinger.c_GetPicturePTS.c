
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ encoder_t ;
struct TYPE_8__ {TYPE_1__* pts_tlb; } ;
typedef TYPE_3__ encoder_sys_t ;
struct TYPE_6__ {int b_empty; scalar_t__ u_pnum; int i_pts; } ;


 int SCHRO_PTS_TLB_SIZE ;
 int VLC_TICK_INVALID ;
 int msg_Err (TYPE_2__*,char*,scalar_t__) ;

__attribute__((used)) static vlc_tick_t GetPicturePTS( encoder_t *p_enc, uint32_t u_pnum )
{
    encoder_sys_t *p_sys = p_enc->p_sys;

    for( int i = 0; i < SCHRO_PTS_TLB_SIZE; i++ )
    {
        if( !p_sys->pts_tlb[i].b_empty &&
            p_sys->pts_tlb[i].u_pnum == u_pnum )
        {
             p_sys->pts_tlb[i].b_empty = 1;
             return p_sys->pts_tlb[i].i_pts;
        }
    }

    msg_Err( p_enc, "Could not retrieve PTS for picture %u", u_pnum );
    return VLC_TICK_INVALID;
}
