
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_tray {int basedirs; int themes; int host_kde; int host_xdg; int items; int * bus; void* watcher_kde; void* watcher_xdg; int fd; struct swaybar* bar; } ;
struct swaybar {int dummy; } ;
typedef int sd_bus ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 struct swaybar_tray* calloc (int,int) ;
 int create_list () ;
 void* create_watcher (char*,int *) ;
 int handle_lost_watcher ;
 int init_host (int *,char*,struct swaybar_tray*) ;
 int init_themes (int *,int *) ;
 int sd_bus_get_fd (int *) ;
 int sd_bus_match_signal (int *,int *,char*,char*,char*,char*,int ,struct swaybar_tray*) ;
 int sd_bus_open_user (int **) ;
 int strerror (int) ;
 int sway_log (int ,char*,...) ;

struct swaybar_tray *create_tray(struct swaybar *bar) {
 sway_log(SWAY_DEBUG, "Initializing tray");

 sd_bus *bus;
 int ret = sd_bus_open_user(&bus);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to connect to user bus: %s", strerror(-ret));
  return ((void*)0);
 }

 struct swaybar_tray *tray = calloc(1, sizeof(struct swaybar_tray));
 if (!tray) {
  return ((void*)0);
 }
 tray->bar = bar;
 tray->bus = bus;
 tray->fd = sd_bus_get_fd(tray->bus);

 tray->watcher_xdg = create_watcher("freedesktop", tray->bus);
 tray->watcher_kde = create_watcher("kde", tray->bus);

 ret = sd_bus_match_signal(bus, ((void*)0), "org.freedesktop.DBus",
   "/org/freedesktop/DBus", "org.freedesktop.DBus",
   "NameOwnerChanged", handle_lost_watcher, tray);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to subscribe to unregistering events: %s",
    strerror(-ret));
 }

 tray->items = create_list();

 init_host(&tray->host_xdg, "freedesktop", tray);
 init_host(&tray->host_kde, "kde", tray);

 init_themes(&tray->themes, &tray->basedirs);

 return tray;
}
