
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* network; } ;
struct TYPE_6__ {int br_untagged_bitmap; int br_vid_bitmap; int pvid; } ;
typedef TYPE_2__ Link ;


 int br_vlan_configure (TYPE_2__*,int ,int ,int ) ;
 int log_link_error_errno (TYPE_2__*,int,char*) ;

__attribute__((used)) static int link_set_bridge_vlan(Link *link) {
        int r;

        r = br_vlan_configure(link, link->network->pvid, link->network->br_vid_bitmap, link->network->br_untagged_bitmap);
        if (r < 0)
                log_link_error_errno(link, r, "Failed to assign VLANs to bridge port: %m");

        return r;
}
