#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtp_pkt {int dummy; } ;
struct rist_flow {int reset; int fd_out; int fd_rtcp; int fd_rtcp_m; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int RIST_QUEUE_SIZE ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rist_flow*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rist_flow *FUNC3()
{
    struct rist_flow *flow = FUNC0(1, sizeof(struct rist_flow));
    if (!flow)
        return NULL;

    flow->reset = 1;
    flow->buffer = FUNC0(RIST_QUEUE_SIZE, sizeof(struct rtp_pkt));
    if ( FUNC2( flow->buffer == NULL ) )
    {
        FUNC1(flow);
        return NULL;
    }
    flow->fd_out = -1;
    flow->fd_rtcp = -1;
    flow->fd_rtcp_m = -1;

    return flow;
}