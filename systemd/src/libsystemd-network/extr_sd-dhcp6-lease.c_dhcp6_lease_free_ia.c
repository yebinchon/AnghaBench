
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * addresses; } ;
typedef TYPE_1__ DHCP6IA ;
typedef int DHCP6Address ;


 int LIST_REMOVE (int ,int *,int *) ;
 int addresses ;
 int free (int *) ;

DHCP6IA *dhcp6_lease_free_ia(DHCP6IA *ia) {
        DHCP6Address *address;

        if (!ia)
                return ((void*)0);

        while (ia->addresses) {
                address = ia->addresses;

                LIST_REMOVE(addresses, ia->addresses, address);

                free(address);
        }

        return ((void*)0);
}
