
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_1__ Varlink ;


 int VARLINK_ERROR_TIMEOUT ;
 scalar_t__ VARLINK_PENDING_TIMEOUT ;
 int VARLINK_PROCESSING_TIMEOUT ;
 int assert (TYPE_1__*) ;
 int varlink_close (TYPE_1__*) ;
 int varlink_dispatch_local_error (TYPE_1__*,int ) ;
 int varlink_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static int varlink_dispatch_timeout(Varlink *v) {
        assert(v);

        if (v->state != VARLINK_PENDING_TIMEOUT)
                return 0;

        varlink_set_state(v, VARLINK_PROCESSING_TIMEOUT);
        varlink_dispatch_local_error(v, VARLINK_ERROR_TIMEOUT);
        varlink_close(v);

        return 1;
}
