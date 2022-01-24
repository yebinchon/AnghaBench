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
typedef  int usec_t ;
struct TYPE_4__ {int max_rtt; int /*<<< orphan*/  resend_timeout; } ;
typedef  TYPE_1__ DnsScope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MULTICAST_RESEND_TIMEOUT_MAX_USEC ; 
 int /*<<< orphan*/  MULTICAST_RESEND_TIMEOUT_MIN_USEC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(DnsScope *s, usec_t rtt) {
        FUNC2(s);

        if (rtt <= s->max_rtt)
                return;

        s->max_rtt = rtt;
        s->resend_timeout = FUNC1(FUNC0(MULTICAST_RESEND_TIMEOUT_MIN_USEC, s->max_rtt * 2), MULTICAST_RESEND_TIMEOUT_MAX_USEC);
}