
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; } ;
typedef TYPE_1__ Varlink ;


 int EINVAL ;
 scalar_t__ VARLINK_DISCONNECTED ;
 int assert_return (TYPE_1__*,int ) ;
 int varlink_clear (TYPE_1__*) ;
 int varlink_detach_server (TYPE_1__*) ;
 int varlink_ref (TYPE_1__*) ;
 int varlink_set_state (TYPE_1__*,scalar_t__) ;
 int varlink_unref (TYPE_1__*) ;

int varlink_close(Varlink *v) {

        assert_return(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return 0;

        varlink_set_state(v, VARLINK_DISCONNECTED);



        varlink_ref(v);
        varlink_detach_server(v);
        varlink_clear(v);
        varlink_unref(v);

        return 1;
}
