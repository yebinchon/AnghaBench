
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* current_server_address; } ;
struct TYPE_10__ {TYPE_1__* name; } ;
struct TYPE_9__ {TYPE_7__* manager; int addresses; } ;
typedef TYPE_2__ ServerAddress ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int addresses ;
 int manager_set_server_address (TYPE_7__*,int *) ;
 TYPE_2__* mfree (TYPE_2__*) ;

ServerAddress* server_address_free(ServerAddress *a) {
        if (!a)
                return ((void*)0);

        if (a->name) {
                LIST_REMOVE(addresses, a->name->addresses, a);

                if (a->name->manager && a->name->manager->current_server_address == a)
                        manager_set_server_address(a->name->manager, ((void*)0));
        }

        return mfree(a);
}
