
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dependencies; } ;
typedef TYPE_1__ Unit ;


 size_t UNIT_TRIGGERS ;
 TYPE_1__* hashmap_first_key (int ) ;

__attribute__((used)) static inline Unit* UNIT_TRIGGER(Unit *u) {
        return hashmap_first_key(u->dependencies[UNIT_TRIGGERS]);
}
