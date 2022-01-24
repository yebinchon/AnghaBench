#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  atom; } ;
typedef  TYPE_1__ xcb_intern_atom_reply_t ;
typedef  int /*<<< orphan*/  xcb_intern_atom_cookie_t ;
typedef  TYPE_1__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct wl_listener {int dummy; } ;
struct sway_xwayland {int /*<<< orphan*/ * atoms; } ;
struct sway_server {struct sway_xwayland xwayland; } ;

/* Variables and functions */
 int ATOM_LAST ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/ * atom_map ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct sway_server* server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct sway_server* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  xwayland_ready ; 

void FUNC9(struct wl_listener *listener, void *data) {
	struct sway_server *server =
		FUNC3(listener, server, xwayland_ready);
	struct sway_xwayland *xwayland = &server->xwayland;

	xcb_connection_t *xcb_conn = FUNC4(NULL, NULL);
	int err = FUNC5(xcb_conn);
	if (err) {
		FUNC2(SWAY_ERROR, "XCB connect failed: %d", err);
		return;
	}

	xcb_intern_atom_cookie_t cookies[ATOM_LAST];
	for (size_t i = 0; i < ATOM_LAST; i++) {
		cookies[i] =
			FUNC7(xcb_conn, 0, FUNC1(atom_map[i]), atom_map[i]);
	}
	for (size_t i = 0; i < ATOM_LAST; i++) {
		xcb_generic_error_t *error = NULL;
		xcb_intern_atom_reply_t *reply =
			FUNC8(xcb_conn, cookies[i], &error);
		if (reply != NULL && error == NULL) {
			xwayland->atoms[i] = reply->atom;
		}
		FUNC0(reply);

		if (error != NULL) {
			FUNC2(SWAY_ERROR, "could not resolve atom %s, X11 error code %d",
				atom_map[i], error->error_code);
			FUNC0(error);
			break;
		}
	}

	FUNC6(xcb_conn);
}