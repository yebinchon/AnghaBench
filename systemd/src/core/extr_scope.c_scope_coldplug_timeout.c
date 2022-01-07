
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_9__ {int monotonic; } ;
struct TYPE_8__ {int monotonic; } ;
struct TYPE_11__ {TYPE_2__ state_change_timestamp; TYPE_1__ active_enter_timestamp; } ;
struct TYPE_10__ {int deserialized_state; int timeout_stop_usec; int runtime_max_usec; } ;
typedef TYPE_3__ Scope ;





 TYPE_6__* UNIT (TYPE_3__*) ;
 int USEC_INFINITY ;
 int assert (TYPE_3__*) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static usec_t scope_coldplug_timeout(Scope *s) {
        assert(s);

        switch (s->deserialized_state) {

        case 130:
                return usec_add(UNIT(s)->active_enter_timestamp.monotonic, s->runtime_max_usec);

        case 129:
        case 128:
                return usec_add(UNIT(s)->state_change_timestamp.monotonic, s->timeout_stop_usec);

        default:
                return USEC_INFINITY;
        }
}
