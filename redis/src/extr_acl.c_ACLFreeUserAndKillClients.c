
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int user ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_5__ {scalar_t__ authenticated; int * user; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients; } ;


 int ACLFreeUser (int *) ;
 int * DefaultUser ;
 int freeClientAsync (TYPE_1__*) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 TYPE_2__ server ;

void ACLFreeUserAndKillClients(user *u) {
    listIter li;
    listNode *ln;
    listRewind(server.clients,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        client *c = listNodeValue(ln);
        if (c->user == u) {






            c->user = DefaultUser;
            c->authenticated = 0;
            freeClientAsync(c);
        }
    }
    ACLFreeUser(u);
}
