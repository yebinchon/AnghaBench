
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ timeout; int timestamp; } ;
typedef TYPE_1__ Varlink ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 scalar_t__ USEC_INFINITY ;
 int VARLINK_AWAITING_REPLY ;
 int VARLINK_CALLING ;
 scalar_t__ VARLINK_DISCONNECTED ;
 int assert_return (TYPE_1__*,int ) ;
 scalar_t__ usec_add (int ,scalar_t__) ;

int varlink_get_timeout(Varlink *v, usec_t *ret) {
        assert_return(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return -ENOTCONN;

        if (IN_SET(v->state, VARLINK_AWAITING_REPLY, VARLINK_CALLING) &&
            v->timeout != USEC_INFINITY) {
                if (ret)
                        *ret = usec_add(v->timestamp, v->timeout);
                return 1;
        } else {
                if (ret)
                        *ret = USEC_INFINITY;
                return 0;
        }
}
