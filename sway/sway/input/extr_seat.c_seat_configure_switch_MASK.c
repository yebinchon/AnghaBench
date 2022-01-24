#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sway_seat_device {int /*<<< orphan*/  switch_device; } ;
struct sway_seat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,struct sway_seat_device*) ; 

__attribute__((used)) static void FUNC3(struct sway_seat *seat,
        struct sway_seat_device *seat_device) {
	if (!seat_device->switch_device) {
		FUNC2(seat, seat_device);
	}
	FUNC0(seat, seat_device);
	FUNC1(seat_device->switch_device);
}