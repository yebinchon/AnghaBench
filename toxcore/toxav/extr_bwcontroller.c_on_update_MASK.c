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
struct BWCMessage {int recv; int lost; } ;
struct TYPE_5__ {scalar_t__ lru; } ;
struct TYPE_6__ {int /*<<< orphan*/  mcb_data; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  (* mcb ) (TYPE_2__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ;TYPE_1__ cycle; } ;
typedef  TYPE_2__ BWController ;

/* Variables and functions */
 scalar_t__ BWC_SEND_INTERVAL_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 

int FUNC4 (BWController *bwc, struct BWCMessage *msg)
{
    FUNC0 ("%p Got update from peer", bwc);

    /* Peer must respect time boundary */
    if (FUNC1() < bwc->cycle.lru + BWC_SEND_INTERVAL_MS) {
        FUNC0("%p Rejecting extra update", bwc);
        return -1;
    }

    bwc->cycle.lru = FUNC1();

    msg->recv = FUNC2(msg->recv);
    msg->lost = FUNC2(msg->lost);

    FUNC0 ("recved: %u lost: %u", msg->recv, msg->lost);

    if (msg->lost && bwc->mcb)
        bwc->mcb(bwc, bwc->friend_number,
                 ((float) (msg->lost) / (msg->recv + msg->lost)),
                 bwc->mcb_data);

    return 0;
}