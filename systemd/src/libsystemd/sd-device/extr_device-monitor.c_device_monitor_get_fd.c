
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ sd_device_monitor ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int device_monitor_get_fd(sd_device_monitor *m) {
        assert_return(m, -EINVAL);

        return m->sock;
}
