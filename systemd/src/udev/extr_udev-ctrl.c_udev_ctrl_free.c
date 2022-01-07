
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int event; int sock; int event_source; } ;


 int assert (struct udev_ctrl*) ;
 struct udev_ctrl* mfree (struct udev_ctrl*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int udev_ctrl_disconnect (struct udev_ctrl*) ;

__attribute__((used)) static struct udev_ctrl *udev_ctrl_free(struct udev_ctrl *uctrl) {
        assert(uctrl);

        udev_ctrl_disconnect(uctrl);

        sd_event_source_unref(uctrl->event_source);
        safe_close(uctrl->sock);

        sd_event_unref(uctrl->event);
        return mfree(uctrl);
}
