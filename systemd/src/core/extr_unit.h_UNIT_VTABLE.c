
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UnitVTable ;
struct TYPE_3__ {size_t type; } ;
typedef TYPE_1__ Unit ;


 int const** unit_vtable ;

__attribute__((used)) static inline const UnitVTable* UNIT_VTABLE(Unit *u) {
        return unit_vtable[u->type];
}
