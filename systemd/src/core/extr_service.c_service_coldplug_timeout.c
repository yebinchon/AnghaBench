
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_13__ {int monotonic; } ;
struct TYPE_11__ {int monotonic; } ;
struct TYPE_14__ {int monotonic; } ;
struct TYPE_16__ {TYPE_3__ state_change_timestamp; TYPE_1__ inactive_enter_timestamp; TYPE_4__ active_enter_timestamp; } ;
struct TYPE_12__ {int timeout_clean_usec; } ;
struct TYPE_15__ {int deserialized_state; TYPE_2__ exec_context; int restart_usec; int timeout_stop_usec; int runtime_max_usec; int timeout_start_usec; } ;
typedef TYPE_5__ Service ;
 TYPE_9__* UNIT (TYPE_5__*) ;
 int USEC_INFINITY ;
 int assert (TYPE_5__*) ;
 int service_timeout_abort_usec (TYPE_5__*) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static usec_t service_coldplug_timeout(Service *s) {
        assert(s);

        switch (s->deserialized_state) {

        case 140:
        case 133:
        case 135:
        case 134:
        case 137:
                return usec_add(UNIT(s)->state_change_timestamp.monotonic, s->timeout_start_usec);

        case 136:
                return usec_add(UNIT(s)->active_enter_timestamp.monotonic, s->runtime_max_usec);

        case 132:
        case 129:
        case 130:
        case 131:
        case 138:
        case 139:
                return usec_add(UNIT(s)->state_change_timestamp.monotonic, s->timeout_stop_usec);

        case 128:
                return usec_add(UNIT(s)->state_change_timestamp.monotonic, service_timeout_abort_usec(s));

        case 142:
                return usec_add(UNIT(s)->inactive_enter_timestamp.monotonic, s->restart_usec);

        case 141:
                return usec_add(UNIT(s)->state_change_timestamp.monotonic, s->exec_context.timeout_clean_usec);

        default:
                return USEC_INFINITY;
        }
}
