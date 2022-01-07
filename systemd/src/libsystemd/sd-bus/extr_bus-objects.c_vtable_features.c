
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ element_size; int features; int vtable_format_reference; } ;
struct TYPE_6__ {TYPE_1__ start; } ;
struct TYPE_7__ {TYPE_2__ x; } ;
typedef TYPE_3__ sd_bus_vtable ;


 scalar_t__ VTABLE_ELEMENT_SIZE_242 ;

__attribute__((used)) static int vtable_features(const sd_bus_vtable *vtable) {
        if (vtable[0].x.start.element_size < VTABLE_ELEMENT_SIZE_242 ||
            !vtable[0].x.start.vtable_format_reference)
                return 0;
        return vtable[0].x.start.features;
}
