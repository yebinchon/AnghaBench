
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr {int dummy; } ;
struct rist_flow {int peer_socklen; int peer_sockaddr; int fd_nack; int cname; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ stream_sys_t ;


 int RTCP_EMPTY_RR_SIZE ;
 int RTCP_SDES_SIZE ;
 int free (int *) ;
 int * malloc (int) ;
 int rist_WriteTo_i11e_Locked (int ,int ,int *,int,struct sockaddr*,int ) ;
 int rtcp_fb_set_int_ssrc_pkt_sender (int *,int ) ;
 int rtcp_rr_set_pt (int *) ;
 int rtcp_sdes_set_cname (int *,int) ;
 int rtcp_sdes_set_name_length (int *,int) ;
 int rtcp_sdes_set_pt (int *) ;
 int rtcp_set_length (int *,int) ;
 int rtp_set_cc (int *,int) ;
 int rtp_set_hdr (int *) ;
 int strlcpy (char*,int ,int) ;
 int strlen (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void send_rtcp_feedback(stream_t *p_access, struct rist_flow *flow)
{
    stream_sys_t *p_sys = p_access->p_sys;
    int namelen = strlen(flow->cname) + 1;


    if ((namelen - 2) & 0x3)
        namelen = ((((namelen - 2) >> 2) + 1) << 2) + 2;

    int rtcp_feedback_size = RTCP_EMPTY_RR_SIZE + RTCP_SDES_SIZE + namelen;
    uint8_t *buf = malloc(rtcp_feedback_size);
    if ( unlikely( buf == ((void*)0) ) )
        return;


    uint8_t *rr = buf;
    rtp_set_hdr(rr);
    rtcp_rr_set_pt(rr);
    rtcp_set_length(rr, 1);
    rtcp_fb_set_int_ssrc_pkt_sender(rr, 0);


    uint8_t *p_sdes = (buf + RTCP_EMPTY_RR_SIZE);
    rtp_set_hdr(p_sdes);
    rtp_set_cc(p_sdes, 1);
    rtcp_sdes_set_pt(p_sdes);
    rtcp_set_length(p_sdes, (namelen >> 2) + 2);
    rtcp_sdes_set_cname(p_sdes, 1);
    rtcp_sdes_set_name_length(p_sdes, strlen(flow->cname));
    uint8_t *p_sdes_name = (buf + RTCP_EMPTY_RR_SIZE + RTCP_SDES_SIZE);
    strlcpy((char *)p_sdes_name, flow->cname, namelen);


    rist_WriteTo_i11e_Locked(p_sys->lock, flow->fd_nack, buf, rtcp_feedback_size,
        (struct sockaddr *)&flow->peer_sockaddr, flow->peer_socklen);
    free(buf);
    buf = ((void*)0);
}
