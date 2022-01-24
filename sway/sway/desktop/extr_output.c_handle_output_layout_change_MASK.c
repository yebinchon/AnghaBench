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
struct sway_server {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  output_layout_change ; 
 struct sway_server* server ; 
 int /*<<< orphan*/  FUNC0 (struct sway_server*) ; 
 struct sway_server* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_server *server =
		FUNC1(listener, server, output_layout_change);
	FUNC0(server);
}