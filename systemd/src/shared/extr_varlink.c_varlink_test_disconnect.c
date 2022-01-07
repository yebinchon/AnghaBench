
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ output_buffer_size; scalar_t__ got_pollhup; scalar_t__ write_disconnected; int state; scalar_t__ read_disconnected; scalar_t__ connecting; } ;
typedef TYPE_1__ Varlink ;


 scalar_t__ IN_SET (int ,int ,...) ;
 int VARLINK_AWAITING_REPLY ;
 int VARLINK_CALLING ;
 int VARLINK_IDLE_CLIENT ;
 int VARLINK_IDLE_SERVER ;
 int VARLINK_PENDING_DISCONNECT ;
 int VARLINK_STATE_IS_ALIVE (int ) ;
 int assert (TYPE_1__*) ;
 int varlink_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static int varlink_test_disconnect(Varlink *v) {
        assert(v);






        if (!VARLINK_STATE_IS_ALIVE(v->state))
                return 0;


        if (v->connecting)
                return 0;


        if (v->output_buffer_size > 0 && !v->write_disconnected)
                return 0;


        if (v->read_disconnected && v->write_disconnected)
                goto disconnect;


        if (IN_SET(v->state, VARLINK_AWAITING_REPLY, VARLINK_CALLING, VARLINK_IDLE_SERVER) && v->read_disconnected)
                goto disconnect;




        if (IN_SET(v->state, VARLINK_IDLE_CLIENT) && (v->write_disconnected || v->got_pollhup))
                goto disconnect;

        return 0;

disconnect:
        varlink_set_state(v, VARLINK_PENDING_DISCONNECT);
        return 1;
}
