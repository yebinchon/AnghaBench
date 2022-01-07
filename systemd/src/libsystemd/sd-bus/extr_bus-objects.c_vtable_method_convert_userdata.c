
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_6__ {int offset; } ;
struct TYPE_7__ {TYPE_1__ method; } ;
struct TYPE_8__ {TYPE_2__ x; } ;
typedef TYPE_3__ sd_bus_vtable ;


 int assert (TYPE_3__ const*) ;

__attribute__((used)) static void *vtable_method_convert_userdata(const sd_bus_vtable *p, void *u) {
        assert(p);

        return (uint8_t*) u + p->x.method.offset;
}
