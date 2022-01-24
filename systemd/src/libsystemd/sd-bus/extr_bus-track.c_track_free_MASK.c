#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* destroy_callback ) (int /*<<< orphan*/ ) ;TYPE_4__* bus; int /*<<< orphan*/  names; scalar_t__ in_list; } ;
typedef  TYPE_1__ sd_bus_track ;
struct TYPE_12__ {int /*<<< orphan*/  tracks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tracks ; 

__attribute__((used)) static sd_bus_track *FUNC7(sd_bus_track *track) {
        FUNC1(track);

        if (track->in_list)
                FUNC0(tracks, track->bus->tracks, track);

        FUNC2(track);
        track->names = FUNC3(track->names);
        track->bus = FUNC5(track->bus);

        if (track->destroy_callback)
                track->destroy_callback(track->userdata);

        return FUNC4(track);
}