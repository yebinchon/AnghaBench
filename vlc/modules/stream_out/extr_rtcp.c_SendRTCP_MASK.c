#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {int packets; int bytes; int counter; int length; int /*<<< orphan*/  handle; int /*<<< orphan*/ * payload; } ;
typedef  TYPE_1__ rtcp_sender_t ;
struct TYPE_6__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC6 (rtcp_sender_t *restrict rtcp, const block_t *rtp)
{
    if ((rtcp == NULL) /* RTCP sender off */
     || (rtp->i_buffer < 12)) /* too short RTP packet */
        return;

    /* Updates statistics */
    rtcp->packets++;
    rtcp->bytes += rtp->i_buffer;
    rtcp->counter += rtp->i_buffer;

    /* 1.25% rate limit */
    if ((rtcp->counter / 80) < rtcp->length)
        return;

    uint8_t *ptr = rtcp->payload;
    uint32_t last = FUNC0 (ptr + 8); // last RTCP SR send time
    uint64_t now64 = FUNC1 ();
    if ((now64 >> 32) < (last + 5))
        return; // no more than one SR every 5 seconds

    FUNC4 (ptr + 4, rtp->p_buffer + 8, 4); /* SR SSRC */
    FUNC3 (ptr + 8, now64);
    FUNC4 (ptr + 16, rtp->p_buffer + 4, 4); /* RTP timestamp */
    FUNC2 (ptr + 20, rtcp->packets);
    FUNC2 (ptr + 24, rtcp->bytes);
    FUNC4 (ptr + 28 + 4, rtp->p_buffer + 8, 4); /* SDES SSRC */

    if (FUNC5 (rtcp->handle, ptr, rtcp->length, 0) == (ssize_t)rtcp->length)
        rtcp->counter = 0;
}