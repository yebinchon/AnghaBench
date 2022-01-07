
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* SERVICE (int *) ;
 int assert (int *) ;
 char const* service_state_to_string (int ) ;

__attribute__((used)) static const char *service_sub_state_to_string(Unit *u) {
        assert(u);

        return service_state_to_string(SERVICE(u)->state);
}
