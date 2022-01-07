
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tunnel; } ;
typedef TYPE_1__ L2tpSession ;


 int NETDEV (int ) ;
 int netdev_unref (int ) ;

__attribute__((used)) static void l2tp_session_destroy_callback(L2tpSession *session) {
        if (!session)
                return;

        netdev_unref(NETDEV(session->tunnel));
}
