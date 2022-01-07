
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int nl_pid; } ;
struct TYPE_12__ {TYPE_3__ nl; } ;
struct TYPE_9__ {int nl_pid; } ;
struct TYPE_10__ {TYPE_1__ nl; } ;
struct TYPE_13__ {TYPE_4__ snl; TYPE_2__ snl_trusted_sender; } ;
typedef TYPE_5__ sd_device_monitor ;


 int EINVAL ;
 int assert_return (TYPE_5__*,int ) ;

int device_monitor_allow_unicast_sender(sd_device_monitor *m, sd_device_monitor *sender) {
        assert_return(m, -EINVAL);
        assert_return(sender, -EINVAL);

        m->snl_trusted_sender.nl.nl_pid = sender->snl.nl.nl_pid;
        return 0;
}
