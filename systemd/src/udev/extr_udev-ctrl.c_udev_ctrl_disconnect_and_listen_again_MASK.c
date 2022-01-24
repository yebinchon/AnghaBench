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
struct udev_ctrl {int /*<<< orphan*/  event_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udev_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct udev_ctrl*) ; 

__attribute__((used)) static void FUNC3(struct udev_ctrl *uctrl) {
        FUNC1(uctrl);
        FUNC2(uctrl);
        (void) FUNC0(uctrl->event_source, SD_EVENT_ON);
}