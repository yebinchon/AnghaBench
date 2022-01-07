
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct rist_flow {int peer_socklen; int peer_sockaddr; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int b_disablenacks; int lock; scalar_t__ b_sendnacks; struct rist_flow* flow; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_8__ {int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int MAX_NACKS ;
 int NACK_FMT_BITMASK ;
 int RTCP_FB_FCI_GENERIC_NACK_SIZE ;
 int RTCP_FB_HEADER_SIZE ;
 int RTCP_PT_RTPFB ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int*,int ,int ) ;
 int rist_WriteTo_i11e_Locked (int ,int,int *,int,struct sockaddr*,int ) ;
 int rtcp_fb_nack_set_bitmask_lost (int *,int ) ;
 int rtcp_fb_nack_set_packet_id (int *,int) ;
 int rtcp_fb_set_fmt (int *,int ) ;
 int rtcp_set_length (int *,int) ;
 int rtcp_set_pt (int *,int ) ;
 int rtp_set_hdr (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void send_bbnack(stream_t *p_access, int fd_nack, block_t *pkt_nacks, uint16_t nack_count)
{
    stream_sys_t *p_sys = p_access->p_sys;
    struct rist_flow *flow = p_sys->flow;
    int len = 0;

    int bbnack_bufsize = RTCP_FB_HEADER_SIZE +
        RTCP_FB_FCI_GENERIC_NACK_SIZE * nack_count;
    uint8_t *buf = malloc(bbnack_bufsize);
    if ( unlikely( buf == ((void*)0) ) )
        return;


    uint8_t *nack = buf;
    rtp_set_hdr(nack);
    rtcp_fb_set_fmt(nack, NACK_FMT_BITMASK);
    rtcp_set_pt(nack, RTCP_PT_RTPFB);
    rtcp_set_length(nack, 2 + nack_count);


    len += RTCP_FB_HEADER_SIZE;

    uint16_t nacks[MAX_NACKS];
    memcpy(nacks, pkt_nacks->p_buffer, pkt_nacks->i_buffer);
    for (int i = 0; i < nack_count; i++) {
        uint8_t *nack_record = buf + len + RTCP_FB_FCI_GENERIC_NACK_SIZE*i;
        rtcp_fb_nack_set_packet_id(nack_record, nacks[i]);
        rtcp_fb_nack_set_bitmask_lost(nack_record, 0);
    }
    len += RTCP_FB_FCI_GENERIC_NACK_SIZE * nack_count;


    if (p_sys->b_sendnacks && p_sys->b_disablenacks == 0)
        rist_WriteTo_i11e_Locked(p_sys->lock, fd_nack, buf, len,
            (struct sockaddr *)&flow->peer_sockaddr, flow->peer_socklen);
    free(buf);
    buf = ((void*)0);
}
