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
struct wl_listener {int dummy; } ;
struct sway_output {int /*<<< orphan*/  server; int /*<<< orphan*/  configured; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*) ; 
 struct sway_output* output ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  transform ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sway_output* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wl_listener *listener, void *data) {
	struct sway_output *output = FUNC4(listener, output, transform);
	if (!output->enabled || !output->configured) {
		return;
	}
	FUNC0(output);
	FUNC1(output);
	FUNC2();

	FUNC3(output->server);
}