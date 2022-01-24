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
struct TYPE_5__ {int* qwords; } ;
typedef  TYPE_1__ sd_id128_t ;
struct TYPE_6__ {int perturb; } ;
typedef  TYPE_2__ sd_event ;

/* Variables and functions */
 int USEC_INFINITY ; 
 int USEC_PER_MINUTE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(sd_event *e) {
        sd_id128_t bootid = {};

        /* When we sleep for longer, we try to realign the wakeup to
           the same time within each minute/second/250ms, so that
           events all across the system can be coalesced into a single
           CPU wakeup. However, let's take some system-specific
           randomness for this value, so that in a network of systems
           with synced clocks timer events are distributed a
           bit. Here, we calculate a perturbation usec offset from the
           boot ID. */

        if (FUNC0(e->perturb != USEC_INFINITY))
                return;

        if (FUNC1(&bootid) >= 0)
                e->perturb = (bootid.qwords[0] ^ bootid.qwords[1]) % USEC_PER_MINUTE;
}