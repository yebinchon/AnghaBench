
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int location_geoclue2_state_t ;
typedef int * gpointer ;
typedef char gchar ;
struct TYPE_7__ {int message; } ;
typedef int GVariant ;
typedef TYPE_1__ GError ;
typedef int GDBusProxy ;
typedef int GDBusConnection ;


 int DBUS_ACCESS_ERROR ;
 int G_CALLBACK (int ) ;
 int G_DBUS_CALL_FLAGS_NONE ;
 int G_DBUS_PROXY_FLAGS_NONE ;
 int _ (char*) ;
 char* g_dbus_error_get_remote_error (TYPE_1__*) ;
 scalar_t__ g_dbus_error_is_remote_error (TYPE_1__*) ;
 int * g_dbus_proxy_call_sync (int *,char*,int *,int ,int,int *,TYPE_1__**) ;
 int * g_dbus_proxy_new_sync (int *,int ,int *,char*,char const*,char*,int *,TYPE_1__**) ;
 int g_error_free (TYPE_1__*) ;
 int g_free (char*) ;
 int g_object_unref (int *) ;
 int g_printerr (int ,int ) ;
 int g_signal_connect (int *,char*,int ,int *) ;
 scalar_t__ g_strcmp0 (char*,int ) ;
 int g_variant_get (int *,char*,char const**) ;
 int * g_variant_new (char*,...) ;
 int g_variant_unref (int *) ;
 int geoclue_client_signal_cb ;
 int mark_error (int *) ;
 int print_denial_message () ;

__attribute__((used)) static void
on_name_appeared(GDBusConnection *conn, const gchar *name,
   const gchar *name_owner, gpointer user_data)
{
 location_geoclue2_state_t *state = user_data;


 GError *error = ((void*)0);
 GDBusProxy *geoclue_manager = g_dbus_proxy_new_sync(
  conn,
  G_DBUS_PROXY_FLAGS_NONE,
  ((void*)0),
  "org.freedesktop.GeoClue2",
  "/org/freedesktop/GeoClue2/Manager",
  "org.freedesktop.GeoClue2.Manager",
  ((void*)0), &error);
 if (geoclue_manager == ((void*)0)) {
  g_printerr(_("Unable to obtain GeoClue Manager: %s.\n"),
      error->message);
  g_error_free(error);
  mark_error(state);
  return;
 }


 error = ((void*)0);
 GVariant *client_path_v =
  g_dbus_proxy_call_sync(geoclue_manager,
           "GetClient",
           ((void*)0),
           G_DBUS_CALL_FLAGS_NONE,
           -1, ((void*)0), &error);
 if (client_path_v == ((void*)0)) {
  g_printerr(_("Unable to obtain GeoClue client path: %s.\n"),
      error->message);
  g_error_free(error);
  g_object_unref(geoclue_manager);
  mark_error(state);
  return;
 }

 const gchar *client_path;
 g_variant_get(client_path_v, "(&o)", &client_path);


 error = ((void*)0);
 GDBusProxy *geoclue_client = g_dbus_proxy_new_sync(
  conn,
  G_DBUS_PROXY_FLAGS_NONE,
  ((void*)0),
  "org.freedesktop.GeoClue2",
  client_path,
  "org.freedesktop.GeoClue2.Client",
  ((void*)0), &error);
 if (geoclue_client == ((void*)0)) {
  g_printerr(_("Unable to obtain GeoClue Client: %s.\n"),
      error->message);
  g_error_free(error);
  g_variant_unref(client_path_v);
  g_object_unref(geoclue_manager);
  mark_error(state);
  return;
 }

 g_variant_unref(client_path_v);


 error = ((void*)0);
 GVariant *ret_v = g_dbus_proxy_call_sync(
  geoclue_client,
  "org.freedesktop.DBus.Properties.Set",
  g_variant_new("(ssv)",
  "org.freedesktop.GeoClue2.Client",
  "DesktopId",
  g_variant_new("s", "redshift")),
  G_DBUS_CALL_FLAGS_NONE,
  -1, ((void*)0), &error);
 if (ret_v == ((void*)0)) {


 } else {
  g_variant_unref(ret_v);
 }


 error = ((void*)0);
 ret_v = g_dbus_proxy_call_sync(
  geoclue_client,
  "org.freedesktop.DBus.Properties.Set",
  g_variant_new("(ssv)",
  "org.freedesktop.GeoClue2.Client",
  "DistanceThreshold",
  g_variant_new("u", 50000)),
  G_DBUS_CALL_FLAGS_NONE,
  -1, ((void*)0), &error);
 if (ret_v == ((void*)0)) {
  g_printerr(_("Unable to set distance threshold: %s.\n"),
      error->message);
  g_error_free(error);
  g_object_unref(geoclue_client);
  g_object_unref(geoclue_manager);
  mark_error(state);
  return;
 }

 g_variant_unref(ret_v);


 g_signal_connect(geoclue_client, "g-signal",
    G_CALLBACK(geoclue_client_signal_cb),
    user_data);


 error = ((void*)0);
 ret_v = g_dbus_proxy_call_sync(geoclue_client,
           "Start",
           ((void*)0),
           G_DBUS_CALL_FLAGS_NONE,
           -1, ((void*)0), &error);
 if (ret_v == ((void*)0)) {
  g_printerr(_("Unable to start GeoClue client: %s.\n"),
      error->message);
  if (g_dbus_error_is_remote_error(error)) {
   gchar *dbus_error = g_dbus_error_get_remote_error(
    error);
   if (g_strcmp0(dbus_error, DBUS_ACCESS_ERROR) == 0) {
    print_denial_message();
   }
   g_free(dbus_error);
  }
  g_error_free(error);
  g_object_unref(geoclue_client);
  g_object_unref(geoclue_manager);
  mark_error(state);
  return;
 }

 g_variant_unref(ret_v);
}
