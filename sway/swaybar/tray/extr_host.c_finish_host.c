
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_host {int watcher_interface; int service; TYPE_1__* tray; } ;
struct TYPE_2__ {int bus; } ;


 int free (int ) ;
 int sd_bus_release_name (int ,int ) ;

void finish_host(struct swaybar_host *host) {
 sd_bus_release_name(host->tray->bus, host->service);
 free(host->service);
 free(host->watcher_interface);
}
