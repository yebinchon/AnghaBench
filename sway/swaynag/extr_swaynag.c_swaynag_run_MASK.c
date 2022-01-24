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
struct swaynag {int run_display; scalar_t__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swaynag*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

void FUNC3(struct swaynag *swaynag) {
	swaynag->run_display = true;
	FUNC0(swaynag);
	while (swaynag->run_display
			&& FUNC2(swaynag->display) != -1) {
		// This is intentionally left blank
	}

	if (swaynag->display) {
		FUNC1(swaynag->display);
	}
}