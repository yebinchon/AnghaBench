#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int available; int /*<<< orphan*/  pipe_fd_write; int /*<<< orphan*/  lock; void* longitude; void* latitude; } ;
typedef  TYPE_1__ location_geoclue2_state_t ;
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_9__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GVariant ;
typedef  TYPE_3__ GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;

/* Variables and functions */
 int /*<<< orphan*/  G_DBUS_PROXY_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/  const**) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(GDBusProxy *client, gchar *sender_name,
			 gchar *signal_name, GVariant *parameters,
			 gpointer user_data)
{
	location_geoclue2_state_t *state = user_data;

	/* Only handle LocationUpdated signals */
	if (FUNC8(signal_name, "LocationUpdated") != 0) {
		return;
	}

	/* Obtain location path */
	const gchar *location_path;
	FUNC9(parameters, 1, "&o", &location_path);

	/* Obtain location */
	GError *error = NULL;
	GDBusProxy *location = FUNC3(
		FUNC2(client),
		G_DBUS_PROXY_FLAGS_NONE,
		NULL,
		"org.freedesktop.GeoClue2",
		location_path,
		"org.freedesktop.GeoClue2.Location",
		NULL, &error);
	if (location == NULL) {
		FUNC7(FUNC0("Unable to obtain location: %s.\n"),
			   error->message);
		FUNC4(error);
		FUNC11(state);
		return;
	}

	FUNC5(&state->lock);

	/* Read location properties */
	GVariant *lat_v = FUNC1(
		location, "Latitude");
	state->latitude = FUNC10(lat_v);

	GVariant *lon_v = FUNC1(
		location, "Longitude");
	state->longitude = FUNC10(lon_v);

	state->available = 1;

	FUNC6(&state->lock);

	FUNC12(state->pipe_fd_write);
}