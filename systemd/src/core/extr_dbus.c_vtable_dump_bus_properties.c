
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* member; } ;
struct TYPE_5__ {TYPE_2__ property; } ;
struct TYPE_7__ {scalar_t__ type; int flags; TYPE_1__ x; } ;
typedef TYPE_3__ sd_bus_vtable ;
typedef int FILE ;


 int IN_SET (scalar_t__,int ,int ) ;
 int SD_BUS_VTABLE_DEPRECATED ;
 int SD_BUS_VTABLE_HIDDEN ;
 scalar_t__ _SD_BUS_VTABLE_END ;
 int _SD_BUS_VTABLE_PROPERTY ;
 int _SD_BUS_VTABLE_WRITABLE_PROPERTY ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void vtable_dump_bus_properties(FILE *f, const sd_bus_vtable *table) {
        const sd_bus_vtable *i;

        for (i = table; i->type != _SD_BUS_VTABLE_END; i++) {
                if (!IN_SET(i->type, _SD_BUS_VTABLE_PROPERTY, _SD_BUS_VTABLE_WRITABLE_PROPERTY) ||
                    (i->flags & (SD_BUS_VTABLE_DEPRECATED | SD_BUS_VTABLE_HIDDEN)) != 0)
                        continue;

                fprintf(f, "%s\n", i->x.property.member);
        }
}
