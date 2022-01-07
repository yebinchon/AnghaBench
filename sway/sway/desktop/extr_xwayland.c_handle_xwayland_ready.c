
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int error_code; int atom; } ;
typedef TYPE_1__ xcb_intern_atom_reply_t ;
typedef int xcb_intern_atom_cookie_t ;
typedef TYPE_1__ xcb_generic_error_t ;
typedef int xcb_connection_t ;
struct wl_listener {int dummy; } ;
struct sway_xwayland {int * atoms; } ;
struct sway_server {struct sway_xwayland xwayland; } ;


 int ATOM_LAST ;
 int SWAY_ERROR ;
 int * atom_map ;
 int free (TYPE_1__*) ;
 struct sway_server* server ;
 int strlen (int ) ;
 int sway_log (int ,char*,int,...) ;
 struct sway_server* wl_container_of (struct wl_listener*,int ,int ) ;
 int * xcb_connect (int *,int *) ;
 int xcb_connection_has_error (int *) ;
 int xcb_disconnect (int *) ;
 int xcb_intern_atom (int *,int ,int ,int ) ;
 TYPE_1__* xcb_intern_atom_reply (int *,int ,TYPE_1__**) ;
 int xwayland_ready ;

void handle_xwayland_ready(struct wl_listener *listener, void *data) {
 struct sway_server *server =
  wl_container_of(listener, server, xwayland_ready);
 struct sway_xwayland *xwayland = &server->xwayland;

 xcb_connection_t *xcb_conn = xcb_connect(((void*)0), ((void*)0));
 int err = xcb_connection_has_error(xcb_conn);
 if (err) {
  sway_log(SWAY_ERROR, "XCB connect failed: %d", err);
  return;
 }

 xcb_intern_atom_cookie_t cookies[ATOM_LAST];
 for (size_t i = 0; i < ATOM_LAST; i++) {
  cookies[i] =
   xcb_intern_atom(xcb_conn, 0, strlen(atom_map[i]), atom_map[i]);
 }
 for (size_t i = 0; i < ATOM_LAST; i++) {
  xcb_generic_error_t *error = ((void*)0);
  xcb_intern_atom_reply_t *reply =
   xcb_intern_atom_reply(xcb_conn, cookies[i], &error);
  if (reply != ((void*)0) && error == ((void*)0)) {
   xwayland->atoms[i] = reply->atom;
  }
  free(reply);

  if (error != ((void*)0)) {
   sway_log(SWAY_ERROR, "could not resolve atom %s, X11 error code %d",
    atom_map[i], error->error_code);
   free(error);
   break;
  }
 }

 xcb_disconnect(xcb_conn);
}
