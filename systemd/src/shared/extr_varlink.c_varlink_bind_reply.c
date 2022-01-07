
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VarlinkReply ;
struct TYPE_4__ {scalar_t__ reply_callback; } ;
typedef TYPE_1__ Varlink ;


 int EBUSY ;
 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int varlink_bind_reply(Varlink *v, VarlinkReply callback) {
        assert_return(v, -EINVAL);

        if (callback && v->reply_callback && callback != v->reply_callback)
                return -EBUSY;

        v->reply_callback = callback;

        return 0;
}
