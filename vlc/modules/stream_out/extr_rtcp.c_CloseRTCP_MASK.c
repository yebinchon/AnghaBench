#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int* payload; int /*<<< orphan*/  handle; scalar_t__ length; } ;
typedef  TYPE_1__ rtcp_sender_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC7 (rtcp_sender_t *rtcp)
{
    if (rtcp == NULL)
        return;

    uint8_t *ptr = rtcp->payload;
    uint64_t now64 = FUNC0 ();
    FUNC1 (ptr + 8, now64); /* Update the Sender Report timestamp */

    /* Bye */
    ptr += rtcp->length;
    ptr[0] = (2 << 6) | 1; /* V = 2, P = 0, SC = 1 */
    ptr[1] = 203; /* payload type: Bye */
    FUNC2 (ptr + 2, 1);
    FUNC4 (ptr + 4, rtcp->payload + 4, 4); /* Copy SSRC from Sender Report */
    rtcp->length += 8;

    /* We are THE sender, so we are more important than anybody else, so
     * we can afford not to check bandwidth constraints here. */
    FUNC6 (rtcp->handle, rtcp->payload, rtcp->length, 0);
    FUNC5 (rtcp->handle);
    FUNC3 (rtcp);
}