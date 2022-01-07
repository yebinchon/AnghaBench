
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ndisc; int ifindex; int mac; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int ndisc_handler ;
 int sd_ndisc_attach_event (int ,int *,int ) ;
 int sd_ndisc_new (int *) ;
 int sd_ndisc_set_callback (int ,int ,TYPE_1__*) ;
 int sd_ndisc_set_ifindex (int ,int ) ;
 int sd_ndisc_set_mac (int ,int *) ;

int ndisc_configure(Link *link) {
        int r;

        assert(link);

        r = sd_ndisc_new(&link->ndisc);
        if (r < 0)
                return r;

        r = sd_ndisc_attach_event(link->ndisc, ((void*)0), 0);
        if (r < 0)
                return r;

        r = sd_ndisc_set_mac(link->ndisc, &link->mac);
        if (r < 0)
                return r;

        r = sd_ndisc_set_ifindex(link->ndisc, link->ifindex);
        if (r < 0)
                return r;

        r = sd_ndisc_set_callback(link->ndisc, ndisc_handler, link);
        if (r < 0)
                return r;

        return 0;
}
