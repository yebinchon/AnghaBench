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
struct TYPE_5__ {int /*<<< orphan*/  rb; } ;
struct TYPE_6__ {TYPE_1__ rcvpkt; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  m; } ;
typedef  TYPE_2__ BWController ;

/* Variables and functions */
 int /*<<< orphan*/  BWC_PACKET_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(BWController *bwc)
{
    if (!bwc)
        return;

    FUNC1(bwc->m, bwc->friend_number, BWC_PACKET_ID, NULL, NULL);

    FUNC2(bwc->rcvpkt.rb);
    FUNC0(bwc);
}