
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ fd; } ;
typedef TYPE_1__ Varlink ;


 int EBADF ;
 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ VARLINK_DISCONNECTED ;
 int assert_return (TYPE_1__*,int ) ;

int varlink_get_fd(Varlink *v) {

        assert_return(v, -EINVAL);

        if (v->state == VARLINK_DISCONNECTED)
                return -ENOTCONN;
        if (v->fd < 0)
                return -EBADF;

        return v->fd;
}
