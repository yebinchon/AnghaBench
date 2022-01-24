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
 int /*<<< orphan*/  FUNC2 (struct sway_output*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scale ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_textures ; 
 struct sway_output* FUNC5 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wl_listener *listener, void *data) {
	struct sway_output *output = FUNC5(listener, output, scale);
	if (!output->enabled || !output->configured) {
		return;
	}
	FUNC0(output);
	FUNC2(output, update_textures, NULL);
	FUNC1(output);
	FUNC3();

	FUNC4(output->server);
}