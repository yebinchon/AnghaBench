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
struct sway_output {int dummy; } ;
struct sway_container {int /*<<< orphan*/  view; } ;

/* Variables and functions */
 int /*<<< orphan*/  damage_surface_iterator ; 
 int /*<<< orphan*/  FUNC0 (struct sway_output*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sway_container *con,
		void *data) {
	if (!con->view || !FUNC1(con->view)) {
		return;
	}
	struct sway_output *output = data;
	bool whole = true;
	FUNC0(output, con->view, damage_surface_iterator,
			&whole);
}