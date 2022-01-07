
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 int ETH_ALEN ;
 int memcmp (struct ether_addr const*,struct ether_addr const*,int ) ;

int ether_addr_compare(const struct ether_addr *a, const struct ether_addr *b) {
        return memcmp(a, b, ETH_ALEN);
}
