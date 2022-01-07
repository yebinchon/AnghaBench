
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ connect_callback; } ;
typedef TYPE_1__ VarlinkServer ;
typedef scalar_t__ VarlinkConnect ;


 int EBUSY ;
 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int varlink_server_bind_connect(VarlinkServer *s, VarlinkConnect callback) {
        assert_return(s, -EINVAL);

        if (callback && s->connect_callback && callback != s->connect_callback)
                return -EBUSY;

        s->connect_callback = callback;
        return 0;
}
