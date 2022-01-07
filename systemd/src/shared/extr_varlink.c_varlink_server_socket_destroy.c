
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fd; int address; int event_source; TYPE_1__* server; } ;
typedef TYPE_2__ VarlinkServerSocket ;
struct TYPE_8__ {int sockets; } ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int free (int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int safe_close (int ) ;
 int sd_event_source_disable_unref (int ) ;
 int sockets ;

__attribute__((used)) static VarlinkServerSocket* varlink_server_socket_destroy(VarlinkServerSocket *ss) {
        if (!ss)
                return ((void*)0);

        if (ss->server)
                LIST_REMOVE(sockets, ss->server->sockets, ss);

        sd_event_source_disable_unref(ss->event_source);

        free(ss->address);
        safe_close(ss->fd);

        return mfree(ss);
}
