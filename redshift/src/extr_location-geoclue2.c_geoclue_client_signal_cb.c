
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int available; int pipe_fd_write; int lock; void* longitude; void* latitude; } ;
typedef TYPE_1__ location_geoclue2_state_t ;
typedef TYPE_1__* gpointer ;
typedef int gchar ;
struct TYPE_9__ {int message; } ;
typedef int GVariant ;
typedef TYPE_3__ GError ;
typedef int GDBusProxy ;


 int G_DBUS_PROXY_FLAGS_NONE ;
 int _ (char*) ;
 int * g_dbus_proxy_get_cached_property (int *,char*) ;
 int g_dbus_proxy_get_connection (int *) ;
 int * g_dbus_proxy_new_sync (int ,int ,int *,char*,int const*,char*,int *,TYPE_3__**) ;
 int g_error_free (TYPE_3__*) ;
 int g_mutex_lock (int *) ;
 int g_mutex_unlock (int *) ;
 int g_printerr (int ,int ) ;
 scalar_t__ g_strcmp0 (int *,char*) ;
 int g_variant_get_child (int *,int,char*,int const**) ;
 void* g_variant_get_double (int *) ;
 int mark_error (TYPE_1__*) ;
 int pipeutils_signal (int ) ;

__attribute__((used)) static void
geoclue_client_signal_cb(GDBusProxy *client, gchar *sender_name,
    gchar *signal_name, GVariant *parameters,
    gpointer user_data)
{
 location_geoclue2_state_t *state = user_data;


 if (g_strcmp0(signal_name, "LocationUpdated") != 0) {
  return;
 }


 const gchar *location_path;
 g_variant_get_child(parameters, 1, "&o", &location_path);


 GError *error = ((void*)0);
 GDBusProxy *location = g_dbus_proxy_new_sync(
  g_dbus_proxy_get_connection(client),
  G_DBUS_PROXY_FLAGS_NONE,
  ((void*)0),
  "org.freedesktop.GeoClue2",
  location_path,
  "org.freedesktop.GeoClue2.Location",
  ((void*)0), &error);
 if (location == ((void*)0)) {
  g_printerr(_("Unable to obtain location: %s.\n"),
      error->message);
  g_error_free(error);
  mark_error(state);
  return;
 }

 g_mutex_lock(&state->lock);


 GVariant *lat_v = g_dbus_proxy_get_cached_property(
  location, "Latitude");
 state->latitude = g_variant_get_double(lat_v);

 GVariant *lon_v = g_dbus_proxy_get_cached_property(
  location, "Longitude");
 state->longitude = g_variant_get_double(lon_v);

 state->available = 1;

 g_mutex_unlock(&state->lock);

 pipeutils_signal(state->pipe_fd_write);
}
