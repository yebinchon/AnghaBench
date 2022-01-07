
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int description; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int empty_to_null (char const*) ;
 int free_and_strdup (int *,int ) ;
 int unit_add_to_dbus_queue (TYPE_1__*) ;

int unit_set_description(Unit *u, const char *description) {
        int r;

        assert(u);

        r = free_and_strdup(&u->description, empty_to_null(description));
        if (r < 0)
                return r;
        if (r > 0)
                unit_add_to_dbus_queue(u);

        return 0;
}
