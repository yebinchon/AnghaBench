
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {char const* (* sub_state_to_string ) (int *) ;} ;


 TYPE_1__* UNIT_VTABLE (int *) ;
 int assert (int *) ;
 char const* stub1 (int *) ;

const char* unit_sub_state_to_string(Unit *u) {
        assert(u);

        return UNIT_VTABLE(u)->sub_state_to_string(u);
}
