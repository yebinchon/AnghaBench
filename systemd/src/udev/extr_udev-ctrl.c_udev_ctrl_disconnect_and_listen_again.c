
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int event_source; } ;


 int SD_EVENT_ON ;
 int sd_event_source_set_enabled (int ,int ) ;
 int udev_ctrl_disconnect (struct udev_ctrl*) ;
 int udev_ctrl_unref (struct udev_ctrl*) ;

__attribute__((used)) static void udev_ctrl_disconnect_and_listen_again(struct udev_ctrl *uctrl) {
        udev_ctrl_disconnect(uctrl);
        udev_ctrl_unref(uctrl);
        (void) sd_event_source_set_enabled(uctrl->event_source, SD_EVENT_ON);
}
