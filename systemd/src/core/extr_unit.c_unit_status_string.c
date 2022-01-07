
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* id; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_6__ {scalar_t__ status_unit_format; } ;


 scalar_t__ STATUS_UNIT_FORMAT_NAME ;
 int assert (TYPE_2__*) ;
 char const* unit_description (TYPE_2__*) ;

const char *unit_status_string(Unit *u) {
        assert(u);

        if (u->manager->status_unit_format == STATUS_UNIT_FORMAT_NAME && u->id)
                return u->id;

        return unit_description(u);
}
