#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct sway_tablet_pad {TYPE_1__ tablet_destroy; int /*<<< orphan*/ * tablet; } ;

/* Variables and functions */
 struct sway_tablet_pad* pad ; 
 int /*<<< orphan*/  tablet_destroy ; 
 struct sway_tablet_pad* FUNC0 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_tablet_pad *pad =
		FUNC0(listener, pad, tablet_destroy);

	pad->tablet = NULL;

	FUNC2(&pad->tablet_destroy.link);
	FUNC1(&pad->tablet_destroy.link);
}