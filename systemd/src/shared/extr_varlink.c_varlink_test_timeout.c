
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ timeout; int timestamp; int state; } ;
typedef TYPE_1__ Varlink ;


 int CLOCK_MONOTONIC ;
 int IN_SET (int ,int ,int ) ;
 scalar_t__ USEC_INFINITY ;
 int VARLINK_AWAITING_REPLY ;
 int VARLINK_CALLING ;
 int VARLINK_PENDING_TIMEOUT ;
 int assert (TYPE_1__*) ;
 scalar_t__ now (int ) ;
 scalar_t__ usec_add (int ,scalar_t__) ;
 int varlink_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static int varlink_test_timeout(Varlink *v) {
        assert(v);

        if (!IN_SET(v->state, VARLINK_AWAITING_REPLY, VARLINK_CALLING))
                return 0;
        if (v->timeout == USEC_INFINITY)
                return 0;

        if (now(CLOCK_MONOTONIC) < usec_add(v->timestamp, v->timeout))
                return 0;

        varlink_set_state(v, VARLINK_PENDING_TIMEOUT);

        return 1;
}
