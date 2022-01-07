
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ sd_netlink_message ;


 int assert_return (TYPE_1__*,int *) ;

sd_netlink_message *sd_netlink_message_next(sd_netlink_message *m) {
        assert_return(m, ((void*)0));

        return m->next;
}
