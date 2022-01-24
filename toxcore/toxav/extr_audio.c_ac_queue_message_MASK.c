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
struct TYPE_3__ {int pt; } ;
struct RTPMessage {TYPE_1__ header; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  j_buf; } ;
typedef  TYPE_2__ ACSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct RTPMessage*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct RTPMessage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int rtp_TypeAudio ; 

int FUNC5(void *acp, struct RTPMessage *msg)
{
    if (!acp || !msg)
        return -1;

    if ((msg->header.pt & 0x7f) == (rtp_TypeAudio + 2) % 128) {
        FUNC0("Got dummy!");
        FUNC1(msg);
        return 0;
    }

    if ((msg->header.pt & 0x7f) != rtp_TypeAudio % 128) {
        FUNC0("Invalid payload type!");
        FUNC1(msg);
        return -1;
    }

    ACSession *ac = acp;

    FUNC3(ac->queue_mutex);
    int rc = FUNC2(ac->j_buf, msg);
    FUNC4(ac->queue_mutex);

    if (rc == -1) {
        FUNC0("Could not queue the message!");
        FUNC1(msg);
        return -1;
    }

    return 0;
}