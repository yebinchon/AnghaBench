
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; int genl; } ;
typedef TYPE_1__ Manager ;


 int RCVBUF_SIZE ;
 int assert (TYPE_1__*) ;
 int sd_genl_socket_open (int *) ;
 int sd_netlink_attach_event (int ,int ,int ) ;
 int sd_netlink_inc_rcvbuf (int ,int ) ;

__attribute__((used)) static int manager_connect_genl(Manager *m) {
        int r;

        assert(m);

        r = sd_genl_socket_open(&m->genl);
        if (r < 0)
                return r;

        r = sd_netlink_inc_rcvbuf(m->genl, RCVBUF_SIZE);
        if (r < 0)
                return r;

        r = sd_netlink_attach_event(m->genl, m->event, 0);
        if (r < 0)
                return r;

        return 0;
}
