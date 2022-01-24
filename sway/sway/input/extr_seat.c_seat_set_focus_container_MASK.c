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
struct sway_container {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_seat*,int /*<<< orphan*/ *) ; 

void FUNC1(struct sway_seat *seat,
		struct sway_container *con) {
	FUNC0(seat, con ? &con->node : NULL);
}