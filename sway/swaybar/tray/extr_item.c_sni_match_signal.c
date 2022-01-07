
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_sni {int interface; int path; int service; TYPE_1__* tray; } ;
typedef int sd_bus_slot ;
typedef int sd_bus_message_handler_t ;
struct TYPE_2__ {int bus; } ;


 int SWAY_ERROR ;
 int sd_bus_match_signal (int ,int **,int ,int ,int ,char*,int ,struct swaybar_sni*) ;
 int strerror (int) ;
 int sway_log (int ,char*,char*,int ) ;

__attribute__((used)) static void sni_match_signal(struct swaybar_sni *sni, sd_bus_slot **slot,
  char *signal, sd_bus_message_handler_t callback) {
 int ret = sd_bus_match_signal(sni->tray->bus, slot, sni->service, sni->path,
   sni->interface, signal, callback, sni);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to subscribe to signal %s: %s", signal,
    strerror(-ret));
 }
}
