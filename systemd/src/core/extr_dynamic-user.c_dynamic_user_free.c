
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int storage_socket; int name; TYPE_1__* manager; } ;
struct TYPE_7__ {int dynamic_users; } ;
typedef TYPE_2__ DynamicUser ;


 int hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int safe_close_pair (int ) ;

__attribute__((used)) static DynamicUser* dynamic_user_free(DynamicUser *d) {
        if (!d)
                return ((void*)0);

        if (d->manager)
                (void) hashmap_remove(d->manager->dynamic_users, d->name);

        safe_close_pair(d->storage_socket);
        return mfree(d);
}
