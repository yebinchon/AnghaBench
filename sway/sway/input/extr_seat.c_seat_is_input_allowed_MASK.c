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
struct wlr_surface {int /*<<< orphan*/  resource; } ;
struct wl_client {int dummy; } ;
struct sway_seat {struct wl_client* exclusive_client; } ;

/* Variables and functions */
 struct wl_client* FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct sway_seat *seat,
		struct wlr_surface *surface) {
	struct wl_client *client = FUNC0(surface->resource);
	return !seat->exclusive_client || seat->exclusive_client == client;
}