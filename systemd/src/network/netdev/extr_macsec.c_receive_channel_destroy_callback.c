
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* macsec; } ;
typedef TYPE_1__ ReceiveChannel ;


 int NETDEV (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int netdev_unref (int ) ;

__attribute__((used)) static void receive_channel_destroy_callback(ReceiveChannel *c) {
        assert(c);
        assert(c->macsec);

        netdev_unref(NETDEV(c->macsec));
}
