
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {int address_pools; } ;
typedef TYPE_2__ AddressPool ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int address_pools ;
 int free (TYPE_2__*) ;

void address_pool_free(AddressPool *p) {

        if (!p)
                return;

        if (p->manager)
                LIST_REMOVE(address_pools, p->manager->address_pools, p);

        free(p);
}
