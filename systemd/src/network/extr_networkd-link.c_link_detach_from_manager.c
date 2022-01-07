
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ifindex; TYPE_1__* manager; } ;
struct TYPE_9__ {int links; int links_requesting_uuid; } ;
typedef TYPE_2__ Link ;


 int INT_TO_PTR (int ) ;
 int assert_se (int) ;
 TYPE_2__* hashmap_remove (int ,int ) ;
 int link_clean (TYPE_2__*) ;
 int link_unref (TYPE_2__*) ;
 TYPE_2__* set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void link_detach_from_manager(Link *link) {
        if (!link || !link->manager)
                return;

        link_unref(set_remove(link->manager->links_requesting_uuid, link));
        link_clean(link);


        assert_se(hashmap_remove(link->manager->links, INT_TO_PTR(link->ifindex)) == link);
        link_unref(link);
}
