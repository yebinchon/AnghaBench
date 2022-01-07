
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients_paused; scalar_t__ clients_pause_end_time; scalar_t__ mstime; int clients; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_SLAVE ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int queueClientForReprocessing (TYPE_1__*) ;
 TYPE_2__ server ;

int clientsArePaused(void) {
    if (server.clients_paused &&
        server.clients_pause_end_time < server.mstime)
    {
        listNode *ln;
        listIter li;
        client *c;

        server.clients_paused = 0;



        listRewind(server.clients,&li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            c = listNodeValue(ln);



            if (c->flags & (CLIENT_SLAVE|CLIENT_BLOCKED)) continue;
            queueClientForReprocessing(c);
        }
    }
    return server.clients_paused;
}
