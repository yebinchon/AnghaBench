
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* ifname; int mac; } ;
typedef TYPE_1__ Link ;
typedef TYPE_1__ FILE ;


 int ETHER_ADDR_TO_STRING_MAX ;
 int assert (TYPE_1__*) ;
 int ether_addr_is_null (int *) ;
 char* ether_addr_to_string (int *,char*) ;
 int fprintf (TYPE_1__*,char*,char*) ;
 int fputs (char*,TYPE_1__*) ;

void link_dump(Link *link, FILE *f) {
        char mac[ETHER_ADDR_TO_STRING_MAX];

        assert(link);
        assert(f);

        fputs("[Match]\n", f);

        if (!ether_addr_is_null(&link->mac))
                fprintf(f, "MACAddress=%s\n", ether_addr_to_string(&link->mac, mac));

        fprintf(f,
                "\n[Link]\n"
                "Name=%s\n",
                link->ifname);
}
