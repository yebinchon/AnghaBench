
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* network; } ;
struct TYPE_8__ {int addresses; } ;
typedef TYPE_2__ Address ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int addresses ;
 TYPE_2__* mfree (TYPE_2__*) ;

__attribute__((used)) static Address *address_free(Address *address) {
        if (!address)
                return ((void*)0);

        if (address->network)
                LIST_REMOVE(addresses, address->network->addresses, address);

        return mfree(address);
}
