#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr {int dummy; } ;
struct rist_flow {int /*<<< orphan*/  peer_socklen; int /*<<< orphan*/  peer_sockaddr; int /*<<< orphan*/  fd_nack; int /*<<< orphan*/  cname; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ stream_sys_t ;

/* Variables and functions */
 int RTCP_EMPTY_RR_SIZE ; 
 int RTCP_SDES_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(stream_t *p_access, struct rist_flow *flow)
{
    stream_sys_t *p_sys = p_access->p_sys;
    int namelen = FUNC12(flow->cname) + 1;

    /* we need to make sure it is a multiple of 4, pad if necessary */
    if ((namelen - 2) & 0x3)
        namelen = ((((namelen - 2) >> 2) + 1) << 2) + 2;

    int rtcp_feedback_size = RTCP_EMPTY_RR_SIZE + RTCP_SDES_SIZE + namelen;
    uint8_t *buf = FUNC1(rtcp_feedback_size);
    if ( FUNC13( buf == NULL ) )
        return;

    /* Populate RR */
    uint8_t *rr = buf;
    FUNC10(rr);
    FUNC4(rr);
    FUNC8(rr, 1);
    FUNC3(rr, 0);

    /* Populate SDES */
    uint8_t *p_sdes = (buf + RTCP_EMPTY_RR_SIZE);
    FUNC10(p_sdes);
    FUNC9(p_sdes, 1); /* Actually it is source count in this case */
    FUNC7(p_sdes);
    FUNC8(p_sdes, (namelen >> 2) + 2);
    FUNC5(p_sdes, 1);
    FUNC6(p_sdes, FUNC12(flow->cname));
    uint8_t *p_sdes_name = (buf + RTCP_EMPTY_RR_SIZE + RTCP_SDES_SIZE);
    FUNC11((char *)p_sdes_name, flow->cname, namelen);

    /* Write to Socket */
    FUNC2(p_sys->lock, flow->fd_nack, buf, rtcp_feedback_size,
        (struct sockaddr *)&flow->peer_sockaddr, flow->peer_socklen);
    FUNC0(buf);
    buf = NULL;
}