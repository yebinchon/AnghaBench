
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* socket; } ;
struct TYPE_9__ {int peers_by_address; } ;
typedef TYPE_2__ SocketPeer ;


 int assert (TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static SocketPeer *socket_peer_free(SocketPeer *p) {
        assert(p);

        if (p->socket)
                set_remove(p->socket->peers_by_address, p);

        return mfree(p);
}
