#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct rist_flow {int dummy; } ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;

/* Variables and functions */
 scalar_t__ RTCP_PT_RTPFB ; 
 scalar_t__ RTCP_PT_RTPFR ; 
 scalar_t__ FUNC0 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct rist_flow*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int FUNC6 (scalar_t__*) ; 
 int FUNC7 (scalar_t__*) ; 
 int FUNC8 (scalar_t__*) ; 
 int FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(sout_access_out_t *p_access, uint8_t  ptype, uint16_t nrecords, 
    struct rist_flow *flow, uint8_t *pkt)
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    int i,j;

    /*msg_Info(p_access, "   Nack (BbRR), %d record(s), Window: [%d:%d-->%d]", nrecords, 
        flow->ri, flow->wi, flow->wi-flow->ri);*/

    if (ptype == RTCP_PT_RTPFR)
    {
        uint8_t pi_ssrc[4];
        FUNC5(pkt, pi_ssrc);
        if (FUNC0(pi_ssrc, "RIST", 4) != 0)
        {
            FUNC2(p_access, "   Ignoring Nack with name %s", pi_ssrc);
            return; /* Ignore app-type not RIST */
        }

        for (i = 0; i < (nrecords-2); i++) {
            uint16_t missing;
            uint16_t additional;
            uint8_t *rtp_nack_record = (pkt + 12 + i * 4);
            missing = FUNC9(rtp_nack_record);
            additional = FUNC8(rtp_nack_record);
            /*msg_Info(p_access, "   Nack (Range), %d, current seq is: [%d]", missing, flow->wi);*/
            FUNC10( &p_sys->lock );
            FUNC3(p_access, flow, missing);
            for (j = 0; j < additional; j++) {
                FUNC3(p_access, flow, missing + j + 1);
            }
            FUNC11( &p_sys->lock );
        }
    }
    else if (ptype == RTCP_PT_RTPFB)
    {
        for (i = 0; i < (nrecords-2); i++) {
            uint16_t missing;
            uint16_t bitmask;
            uint8_t *rtp_nack_record = (pkt + 12 + i * 4);
            missing = FUNC7(rtp_nack_record);
            bitmask = FUNC6(rtp_nack_record);
            /*msg_Info(p_access, "  Nack (Bitmask), %d, current seq is: [%d]", missing, flow->wi);*/
            FUNC10( &p_sys->lock );
            FUNC3(p_access, flow, missing);
            for (j = 0; j < 16; j++) {
                if ((bitmask & (1 << j)) == (1 << j)) {
                    FUNC3(p_access, flow, missing + j + 1);
                }
            }
            FUNC11( &p_sys->lock );
        }
    }
    else
    {
        FUNC1(p_access, "   !!! Wrong feedback. Ptype is %02x!=%02x, FMT: %02x", ptype, 
            RTCP_PT_RTPFR, FUNC4(pkt));
    }
}