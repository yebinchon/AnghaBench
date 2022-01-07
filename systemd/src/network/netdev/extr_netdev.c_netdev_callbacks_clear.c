
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int link; } ;
typedef TYPE_1__ netdev_join_callback ;
struct TYPE_8__ {TYPE_1__* callbacks; } ;
typedef TYPE_2__ NetDev ;


 int LIST_REMOVE (int ,TYPE_1__*,TYPE_1__*) ;
 int callbacks ;
 int free (TYPE_1__*) ;
 int link_unref (int ) ;

__attribute__((used)) static void netdev_callbacks_clear(NetDev *netdev) {
        netdev_join_callback *callback;

        if (!netdev)
                return;

        while ((callback = netdev->callbacks)) {
                LIST_REMOVE(callbacks, netdev->callbacks, callback);
                link_unref(callback->link);
                free(callback);
        }
}
