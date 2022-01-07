
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; } ;
typedef TYPE_1__ Link ;


 int streq_ptr (int ,char*) ;

__attribute__((used)) static bool link_reduces_vlan_mtu(Link *link) {

        return streq_ptr(link->kind, "macsec");
}
