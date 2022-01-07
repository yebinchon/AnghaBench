
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UnitActiveState ;
typedef int Unit ;
struct TYPE_2__ {size_t state; } ;


 TYPE_1__* AUTOMOUNT (int *) ;
 int assert (int *) ;
 int * state_translation_table ;

__attribute__((used)) static UnitActiveState automount_active_state(Unit *u) {
        assert(u);

        return state_translation_table[AUTOMOUNT(u)->state];
}
