
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ state; scalar_t__ defer_event_source; } ;
typedef TYPE_1__ Varlink ;


 int EINVAL ;
 int ENOTCONN ;
 int SD_EVENT_OFF ;
 int SD_EVENT_ON ;
 scalar_t__ VARLINK_DISCONNECTED ;
 int VARLINK_PENDING_DISCONNECT ;
 scalar_t__ VARLINK_STATE_IS_ALIVE (scalar_t__) ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int varlink_close (TYPE_1__*) ;
 int varlink_dispatch_disconnect (TYPE_1__*) ;
 int varlink_dispatch_method (TYPE_1__*) ;
 int varlink_dispatch_reply (TYPE_1__*) ;
 int varlink_dispatch_timeout (TYPE_1__*) ;
 int varlink_parse_message (TYPE_1__*) ;
 int varlink_read (TYPE_1__*) ;
 int varlink_ref (TYPE_1__*) ;
 int varlink_set_state (TYPE_1__*,int ) ;
 int varlink_test_disconnect (TYPE_1__*) ;
 int varlink_test_timeout (TYPE_1__*) ;
 int varlink_unref (TYPE_1__*) ;
 int varlink_write (TYPE_1__*) ;

int varlink_process(Varlink *v) {
        int r;

        assert_return(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return -ENOTCONN;

        varlink_ref(v);

        r = varlink_write(v);
        if (r != 0)
                goto finish;

        r = varlink_dispatch_reply(v);
        if (r != 0)
                goto finish;

        r = varlink_dispatch_method(v);
        if (r != 0)
                goto finish;

        r = varlink_parse_message(v);
        if (r != 0)
                goto finish;

        r = varlink_read(v);
        if (r != 0)
                goto finish;

        r = varlink_test_disconnect(v);
        if (r != 0)
                goto finish;

        r = varlink_dispatch_disconnect(v);
        if (r != 0)
                goto finish;

        r = varlink_test_timeout(v);
        if (r != 0)
                goto finish;

        r = varlink_dispatch_timeout(v);
        if (r != 0)
                goto finish;

finish:
        if (r >= 0 && v->defer_event_source) {
                int q;


                q = sd_event_source_set_enabled(v->defer_event_source, r > 0 ? SD_EVENT_ON : SD_EVENT_OFF);
                if (q < 0)
                        r = q;
        }

        if (r < 0) {
                if (VARLINK_STATE_IS_ALIVE(v->state))

                        varlink_set_state(v, VARLINK_PENDING_DISCONNECT);
                else

                        varlink_close(v);
        }

        varlink_unref(v);
        return r;
}
