#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int payload_type; int (* mcb ) (void*,struct RTPMessage*) ;void* cs; int /*<<< orphan*/ * bwc; int /*<<< orphan*/  friend_number; void* m; int /*<<< orphan*/  ssrc; } ;
typedef  TYPE_1__ RTPSession ;
typedef  void Messenger ;
typedef  int /*<<< orphan*/  BWController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_1__*) ; 

RTPSession *FUNC6 (int payload_type, Messenger *m, uint32_t friendnumber,
                     BWController *bwc, void *cs,
                     int (*mcb) (void *, struct RTPMessage *))
{
    FUNC1(mcb);
    FUNC1(cs);
    FUNC1(m);

    RTPSession *retu = FUNC2(1, sizeof(RTPSession));

    if (!retu) {
        FUNC0("Alloc failed! Program might misbehave!");
        return NULL;
    }

    retu->ssrc = FUNC4();
    retu->payload_type = payload_type;

    retu->m = m;
    retu->friend_number = friendnumber;

    /* Also set payload type as prefix */

    retu->bwc = bwc;
    retu->cs = cs;
    retu->mcb = mcb;

    if (-1 == FUNC5(retu)) {
        FUNC0("Failed to start rtp receiving mode");
        FUNC3(retu);
        return NULL;
    }

    return retu;
}