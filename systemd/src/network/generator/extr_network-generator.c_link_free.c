
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ifname; } ;
typedef TYPE_1__ Link ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static Link *link_free(Link *link) {
        if (!link)
                return ((void*)0);

        free(link->ifname);
        return mfree(link);
}
