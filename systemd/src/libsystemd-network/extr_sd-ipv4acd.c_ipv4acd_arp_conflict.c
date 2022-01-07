
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_arp {int address; int arp_spa; } ;
typedef struct ether_arp sd_ipv4acd ;


 int assert (struct ether_arp*) ;
 scalar_t__ memcmp (int ,int *,int) ;

__attribute__((used)) static bool ipv4acd_arp_conflict(sd_ipv4acd *acd, struct ether_arp *arp) {
        assert(acd);
        assert(arp);


        if (memcmp(arp->arp_spa, &acd->address, sizeof(acd->address)) == 0)
                return 1;


        return 0;
}
