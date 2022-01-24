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
struct sway_server {int /*<<< orphan*/  wl_display; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct sway_server *server) {
	FUNC0(SWAY_INFO, "Running compositor on wayland display '%s'",
			server->socket);
	FUNC1(server->wl_display);
}