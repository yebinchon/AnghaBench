#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  payload_type; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  m; } ;
typedef  TYPE_1__ RTPSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  handle_rtp_packet ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC3(RTPSession *session)
{
    if (session == NULL)
        return -1;

    if (FUNC2(session->m, session->friend_number, session->payload_type,
                              handle_rtp_packet, session) == -1) {
        FUNC1("Failed to register rtp receive handler");
        return -1;
    }

    FUNC0("Started receiving on session: %p", session);
    return 0;
}