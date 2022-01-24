#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int in_queue; TYPE_1__* bus; } ;
typedef  TYPE_2__ sd_bus_track ;
struct TYPE_6__ {int /*<<< orphan*/  track_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  queue ; 

__attribute__((used)) static void FUNC2(sd_bus_track *track) {
        FUNC1(track);

        if (!track->in_queue)
                return;

        FUNC0(queue, track->bus->track_queue, track);
        track->in_queue = false;
}