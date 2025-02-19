
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct rist_flow {int dummy; } ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 scalar_t__ RTCP_PT_RTPFB ;
 scalar_t__ RTCP_PT_RTPFR ;
 scalar_t__ memcmp (scalar_t__*,char*,int) ;
 int msg_Err (TYPE_1__*,char*,scalar_t__,scalar_t__,int ) ;
 int msg_Info (TYPE_1__*,char*,scalar_t__*) ;
 int rist_retransmit (TYPE_1__*,struct rist_flow*,int) ;
 int rtcp_fb_get_fmt (scalar_t__*) ;
 int rtcp_fb_get_ssrc_media_src (scalar_t__*,scalar_t__*) ;
 int rtcp_fb_nack_get_bitmask_lost (scalar_t__*) ;
 int rtcp_fb_nack_get_packet_id (scalar_t__*) ;
 int rtcp_fb_nack_get_range_extra (scalar_t__*) ;
 int rtcp_fb_nack_get_range_start (scalar_t__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void process_nack(sout_access_out_t *p_access, uint8_t ptype, uint16_t nrecords,
    struct rist_flow *flow, uint8_t *pkt)
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    int i,j;




    if (ptype == RTCP_PT_RTPFR)
    {
        uint8_t pi_ssrc[4];
        rtcp_fb_get_ssrc_media_src(pkt, pi_ssrc);
        if (memcmp(pi_ssrc, "RIST", 4) != 0)
        {
            msg_Info(p_access, "   Ignoring Nack with name %s", pi_ssrc);
            return;
        }

        for (i = 0; i < (nrecords-2); i++) {
            uint16_t missing;
            uint16_t additional;
            uint8_t *rtp_nack_record = (pkt + 12 + i * 4);
            missing = rtcp_fb_nack_get_range_start(rtp_nack_record);
            additional = rtcp_fb_nack_get_range_extra(rtp_nack_record);

            vlc_mutex_lock( &p_sys->lock );
            rist_retransmit(p_access, flow, missing);
            for (j = 0; j < additional; j++) {
                rist_retransmit(p_access, flow, missing + j + 1);
            }
            vlc_mutex_unlock( &p_sys->lock );
        }
    }
    else if (ptype == RTCP_PT_RTPFB)
    {
        for (i = 0; i < (nrecords-2); i++) {
            uint16_t missing;
            uint16_t bitmask;
            uint8_t *rtp_nack_record = (pkt + 12 + i * 4);
            missing = rtcp_fb_nack_get_packet_id(rtp_nack_record);
            bitmask = rtcp_fb_nack_get_bitmask_lost(rtp_nack_record);

            vlc_mutex_lock( &p_sys->lock );
            rist_retransmit(p_access, flow, missing);
            for (j = 0; j < 16; j++) {
                if ((bitmask & (1 << j)) == (1 << j)) {
                    rist_retransmit(p_access, flow, missing + j + 1);
                }
            }
            vlc_mutex_unlock( &p_sys->lock );
        }
    }
    else
    {
        msg_Err(p_access, "   !!! Wrong feedback. Ptype is %02x!=%02x, FMT: %02x", ptype,
            RTCP_PT_RTPFR, rtcp_fb_get_fmt(pkt));
    }
}
