#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct sockaddr {int dummy; } ;
struct rist_flow {int /*<<< orphan*/  peer_socklen; int /*<<< orphan*/  peer_sockaddr; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int b_disablenacks; int /*<<< orphan*/  lock; scalar_t__ b_sendnacks; struct rist_flow* flow; } ;
typedef  TYPE_2__ stream_sys_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int MAX_NACKS ; 
 int /*<<< orphan*/  NACK_FMT_BITMASK ; 
 int RTCP_FB_FCI_GENERIC_NACK_SIZE ; 
 int RTCP_FB_HEADER_SIZE ; 
 int /*<<< orphan*/  RTCP_PT_RTPFB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(stream_t *p_access, int fd_nack, block_t *pkt_nacks, uint16_t nack_count)
{
    stream_sys_t *p_sys = p_access->p_sys;
    struct rist_flow *flow = p_sys->flow;
    int len = 0;

    int bbnack_bufsize = RTCP_FB_HEADER_SIZE +
        RTCP_FB_FCI_GENERIC_NACK_SIZE * nack_count;
    uint8_t *buf = FUNC1(bbnack_bufsize);
    if ( FUNC10( buf == NULL ) )
        return;

    /* Populate NACKS */
    uint8_t *nack = buf;
    FUNC9(nack);
    FUNC6(nack, NACK_FMT_BITMASK);
    FUNC8(nack, RTCP_PT_RTPFB);
    FUNC7(nack, 2 + nack_count);
    /*uint8_t name[4] = "RIST";*/
    /*rtcp_fb_set_ssrc_media_src(nack, name);*/
    len += RTCP_FB_HEADER_SIZE;
    /* TODO : group together */
    uint16_t nacks[MAX_NACKS];
    FUNC2(nacks, pkt_nacks->p_buffer, pkt_nacks->i_buffer);
    for (int i = 0; i < nack_count; i++) {
        uint8_t *nack_record = buf + len + RTCP_FB_FCI_GENERIC_NACK_SIZE*i;
        FUNC5(nack_record, nacks[i]);
        FUNC4(nack_record, 0);
    }
    len += RTCP_FB_FCI_GENERIC_NACK_SIZE * nack_count;

    /* Write to Socket */
    if (p_sys->b_sendnacks && p_sys->b_disablenacks == false)
        FUNC3(p_sys->lock, fd_nack, buf, len,
            (struct sockaddr *)&flow->peer_sockaddr, flow->peer_socklen);
    FUNC0(buf);
    buf = NULL;
}