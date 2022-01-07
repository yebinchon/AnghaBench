
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udev_ctrl_handler_t ;
struct udev_ctrl {int event_source; int sock; int event; void* userdata; int callback; } ;


 int EPOLLIN ;
 int assert (struct udev_ctrl*) ;
 int sd_event_add_io (int ,int *,int ,int ,int ,struct udev_ctrl*) ;
 int sd_event_source_set_description (int ,char*) ;
 int udev_ctrl_attach_event (struct udev_ctrl*,int *) ;
 int udev_ctrl_enable_receiving (struct udev_ctrl*) ;
 int udev_ctrl_event_handler ;

int udev_ctrl_start(struct udev_ctrl *uctrl, udev_ctrl_handler_t callback, void *userdata) {
        int r;

        assert(uctrl);

        if (!uctrl->event) {
                r = udev_ctrl_attach_event(uctrl, ((void*)0));
                if (r < 0)
                        return r;
        }

        r = udev_ctrl_enable_receiving(uctrl);
        if (r < 0)
                return r;

        uctrl->callback = callback;
        uctrl->userdata = userdata;

        r = sd_event_add_io(uctrl->event, &uctrl->event_source, uctrl->sock, EPOLLIN, udev_ctrl_event_handler, uctrl);
        if (r < 0)
                return r;

        (void) sd_event_source_set_description(uctrl->event_source, "udev-ctrl");

        return 0;
}
