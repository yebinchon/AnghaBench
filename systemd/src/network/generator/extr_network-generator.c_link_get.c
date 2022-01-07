
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int links_by_name; } ;
typedef int Link ;
typedef TYPE_1__ Context ;


 int * hashmap_get (int ,char const*) ;

Link *link_get(Context *context, const char *ifname) {
        return hashmap_get(context->links_by_name, ifname);
}
