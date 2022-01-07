
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ifindex; } ;
typedef TYPE_1__ Link ;


 int DECIMAL_STR_MAX (int ) ;
 int assert (TYPE_1__ const*) ;
 int sd_bus_path_encode (char*,char*,char**) ;
 int xsprintf (char*,char*,int ) ;

char *link_bus_path(const Link *link) {
        char *p, ifindex[DECIMAL_STR_MAX(link->ifindex)];
        int r;

        assert(link);

        xsprintf(ifindex, "%i", link->ifindex);

        r = sd_bus_path_encode("/org/freedesktop/resolve1/link", ifindex, &p);
        if (r < 0)
                return ((void*)0);

        return p;
}
