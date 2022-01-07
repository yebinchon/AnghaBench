
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int sock_connect; int event_source_connect; } ;


 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void udev_ctrl_disconnect(struct udev_ctrl *uctrl) {
        if (!uctrl)
                return;

        uctrl->event_source_connect = sd_event_source_unref(uctrl->event_source_connect);
        uctrl->sock_connect = safe_close(uctrl->sock_connect);
}
