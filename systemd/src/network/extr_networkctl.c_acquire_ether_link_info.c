
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_ethtool_link_info; int port; int duplex; int speed; int autonegotiation; int name; } ;
typedef TYPE_1__ LinkInfo ;


 scalar_t__ ethtool_get_link_info (int*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void acquire_ether_link_info(int *fd, LinkInfo *link) {
        if (ethtool_get_link_info(fd, link->name,
                                  &link->autonegotiation,
                                  &link->speed,
                                  &link->duplex,
                                  &link->port) >= 0)
                link->has_ethtool_link_info = 1;
}
