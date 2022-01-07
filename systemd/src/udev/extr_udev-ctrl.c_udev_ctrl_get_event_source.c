
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int * event_source; } ;
typedef int sd_event_source ;


 int assert (struct udev_ctrl*) ;

sd_event_source *udev_ctrl_get_event_source(struct udev_ctrl *uctrl) {
        assert(uctrl);

        return uctrl->event_source;
}
