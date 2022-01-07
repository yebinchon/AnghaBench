
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ sd_device_monitor ;


 int assert (TYPE_1__*) ;
 int safe_close (int ) ;

int device_monitor_disconnect(sd_device_monitor *m) {
        assert(m);

        m->sock = safe_close(m->sock);
        return 0;
}
