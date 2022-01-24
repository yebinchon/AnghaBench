#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  location_geoclue2_state_t ;
typedef  int /*<<< orphan*/ * gpointer ;
typedef  char gchar ;
struct TYPE_7__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GVariant ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;
typedef  int /*<<< orphan*/  GDBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ACCESS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_DBUS_CALL_FLAGS_NONE ; 
 int /*<<< orphan*/  G_DBUS_PROXY_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/ * FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  geoclue_client_signal_cb ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void
FUNC17(GDBusConnection *conn, const gchar *name,
		 const gchar *name_owner, gpointer user_data)
{
	location_geoclue2_state_t *state = user_data;

	/* Obtain GeoClue Manager */
	GError *error = NULL;
	GDBusProxy *geoclue_manager = FUNC5(
		conn,
		G_DBUS_PROXY_FLAGS_NONE,
		NULL,
		"org.freedesktop.GeoClue2",
		"/org/freedesktop/GeoClue2/Manager",
		"org.freedesktop.GeoClue2.Manager",
		NULL, &error);
	if (geoclue_manager == NULL) {
		FUNC9(FUNC1("Unable to obtain GeoClue Manager: %s.\n"),
			   error->message);
		FUNC6(error);
		FUNC15(state);
		return;
	}

	/* Obtain GeoClue Client path */
	error = NULL;
	GVariant *client_path_v =
		FUNC4(geoclue_manager,
				       "GetClient",
				       NULL,
				       G_DBUS_CALL_FLAGS_NONE,
				       -1, NULL, &error);
	if (client_path_v == NULL) {
		FUNC9(FUNC1("Unable to obtain GeoClue client path: %s.\n"),
			   error->message);
		FUNC6(error);
		FUNC8(geoclue_manager);
		FUNC15(state);
		return;
	}

	const gchar *client_path;
	FUNC12(client_path_v, "(&o)", &client_path);

	/* Obtain GeoClue client */
	error = NULL;
	GDBusProxy *geoclue_client = FUNC5(
		conn,
		G_DBUS_PROXY_FLAGS_NONE,
		NULL,
		"org.freedesktop.GeoClue2",
		client_path,
		"org.freedesktop.GeoClue2.Client",
		NULL, &error);
	if (geoclue_client == NULL) {
		FUNC9(FUNC1("Unable to obtain GeoClue Client: %s.\n"),
			   error->message);
		FUNC6(error);
		FUNC14(client_path_v);
		FUNC8(geoclue_manager);
		FUNC15(state);
		return;
	}

	FUNC14(client_path_v);

	/* Set desktop id (basename of the .desktop file) */
	error = NULL;
	GVariant *ret_v = FUNC4(
		geoclue_client,
		"org.freedesktop.DBus.Properties.Set",
		FUNC13("(ssv)",
		"org.freedesktop.GeoClue2.Client",
		"DesktopId",
		FUNC13("s", "redshift")),
		G_DBUS_CALL_FLAGS_NONE,
		-1, NULL, &error);
	if (ret_v == NULL) {
		/* Ignore this error for now. The property is not available
		   in early versions of GeoClue2. */
	} else {
		FUNC14(ret_v);
	}

	/* Set distance threshold */
	error = NULL;
	ret_v = FUNC4(
		geoclue_client,
		"org.freedesktop.DBus.Properties.Set",
		FUNC13("(ssv)",
		"org.freedesktop.GeoClue2.Client",
		"DistanceThreshold",
		FUNC13("u", 50000)),
		G_DBUS_CALL_FLAGS_NONE,
		-1, NULL, &error);
	if (ret_v == NULL) {
		FUNC9(FUNC1("Unable to set distance threshold: %s.\n"),
			   error->message);
		FUNC6(error);
		FUNC8(geoclue_client);
		FUNC8(geoclue_manager);
		FUNC15(state);
		return;
	}

	FUNC14(ret_v);

	/* Attach signal callback to client */
	FUNC10(geoclue_client, "g-signal",
			 FUNC0(geoclue_client_signal_cb),
			 user_data);

	/* Start GeoClue client */
	error = NULL;
	ret_v = FUNC4(geoclue_client,
				       "Start",
				       NULL,
				       G_DBUS_CALL_FLAGS_NONE,
				       -1, NULL, &error);
	if (ret_v == NULL) {
		FUNC9(FUNC1("Unable to start GeoClue client: %s.\n"),
			   error->message);
		if (FUNC3(error)) {
			gchar *dbus_error = FUNC2(
				error);
			if (FUNC11(dbus_error, DBUS_ACCESS_ERROR) == 0) {
				FUNC16();
			}
			FUNC7(dbus_error);
		}
		FUNC6(error);
		FUNC8(geoclue_client);
		FUNC8(geoclue_manager);
		FUNC15(state);
		return;
	}

	FUNC14(ret_v);
}