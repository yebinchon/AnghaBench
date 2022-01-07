
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ input_buffer_unscanned; scalar_t__ output_buffer_size; int write_disconnected; int current; int read_disconnected; scalar_t__ connecting; } ;
typedef TYPE_1__ Varlink ;


 int EINVAL ;
 int ENOTCONN ;
 int EPOLLIN ;
 int EPOLLOUT ;
 scalar_t__ IN_SET (scalar_t__,int ,int ,int ) ;
 int VARLINK_AWAITING_REPLY ;
 int VARLINK_CALLING ;
 scalar_t__ VARLINK_DISCONNECTED ;
 int VARLINK_IDLE_SERVER ;
 int assert_return (TYPE_1__*,int ) ;

int varlink_get_events(Varlink *v) {
        int ret = 0;

        assert_return(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return -ENOTCONN;

        if (v->connecting)


                return EPOLLOUT;

        if (!v->read_disconnected &&
            IN_SET(v->state, VARLINK_AWAITING_REPLY, VARLINK_CALLING, VARLINK_IDLE_SERVER) &&
            !v->current &&
            v->input_buffer_unscanned <= 0)
                ret |= EPOLLIN;

        if (!v->write_disconnected &&
            v->output_buffer_size > 0)
                ret |= EPOLLOUT;

        return ret;
}
