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
struct sway_seat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SEAT ; 
 struct sway_seat* FUNC0 (int /*<<< orphan*/ ,int) ; 

struct sway_seat *FUNC1(void) {
	return FUNC0(DEFAULT_SEAT, true);
}