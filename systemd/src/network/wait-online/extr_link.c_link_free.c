
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ifname; int state; TYPE_1__* manager; int ifindex; } ;
struct TYPE_7__ {int links_by_name; int links; } ;
typedef TYPE_2__ Link ;


 int INT_TO_PTR (int ) ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;

Link *link_free(Link *l) {

        if (!l)
                return ((void*)0);

        if (l->manager) {
                hashmap_remove(l->manager->links, INT_TO_PTR(l->ifindex));
                hashmap_remove(l->manager->links_by_name, l->ifname);
        }

        free(l->state);
        free(l->ifname);
        return mfree(l);
 }
