#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int pt; } ;
struct RTPMessage {TYPE_1__ header; } ;
struct TYPE_4__ {void* linfts; int lcfd; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  vbuf_raw; } ;
typedef  TYPE_2__ VCSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct RTPMessage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct RTPMessage* FUNC5 (int /*<<< orphan*/ ,struct RTPMessage*) ; 
 int rtp_TypeVideo ; 

int FUNC6(void *vcp, struct RTPMessage *msg)
{
    /* This function does the reconstruction of video packets.
     * See more info about video splitting in docs
     */
    if (!vcp || !msg)
        return -1;

    if (msg->header.pt == (rtp_TypeVideo + 2) % 128) {
        FUNC0("Got dummy!");
        FUNC2(msg);
        return 0;
    }

    if (msg->header.pt != rtp_TypeVideo % 128) {
        FUNC0("Invalid payload type!");
        FUNC2(msg);
        return -1;
    }

    VCSession *vc = vcp;

    FUNC3(vc->queue_mutex);
    FUNC2(FUNC5(vc->vbuf_raw, msg));
    {
        /* Calculate time took for peer to send us this frame */
        uint32_t t_lcfd = FUNC1() - vc->linfts;
        vc->lcfd = t_lcfd > 100 ? vc->lcfd : t_lcfd;
        vc->linfts = FUNC1();
    }
    FUNC4(vc->queue_mutex);

    return 0;
}