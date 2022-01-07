
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int SWAY_ERROR ;
 int sd_bus_process (int *,int *) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;

void tray_in(int fd, short mask, void *data) {
 sd_bus *bus = data;
 int ret;
 while ((ret = sd_bus_process(bus, ((void*)0))) > 0) {

 }
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to process bus: %s", strerror(-ret));
 }
}
