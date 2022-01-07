
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* current_server_name; int fallback_servers; int link_servers; int system_servers; } ;
struct TYPE_9__ {scalar_t__ type; int string; TYPE_7__* manager; } ;
typedef TYPE_1__ ServerName ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 scalar_t__ SERVER_FALLBACK ;
 scalar_t__ SERVER_LINK ;
 scalar_t__ SERVER_SYSTEM ;
 int assert_not_reached (char*) ;
 int free (int ) ;
 int log_debug (char*,int ) ;
 int manager_set_server_name (TYPE_7__*,int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int names ;
 int server_name_flush_addresses (TYPE_1__*) ;

ServerName *server_name_free(ServerName *n) {
        if (!n)
                return ((void*)0);

        server_name_flush_addresses(n);

        if (n->manager) {
                if (n->type == SERVER_SYSTEM)
                        LIST_REMOVE(names, n->manager->system_servers, n);
                else if (n->type == SERVER_LINK)
                        LIST_REMOVE(names, n->manager->link_servers, n);
                else if (n->type == SERVER_FALLBACK)
                        LIST_REMOVE(names, n->manager->fallback_servers, n);
                else
                        assert_not_reached("Unknown server type");

                if (n->manager->current_server_name == n)
                        manager_set_server_name(n->manager, ((void*)0));
        }

        log_debug("Removed server %s.", n->string);

        free(n->string);
        return mfree(n);
}
