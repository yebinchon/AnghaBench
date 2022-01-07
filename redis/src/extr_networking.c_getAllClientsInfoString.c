
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_2__ {int clients; } ;


 int SDS_NOINIT ;
 int catClientInfoString (int ,int) ;
 int client ;
 int getClientType (int) ;
 int listLength (int ) ;
 int * listNext (int *) ;
 int listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdscatlen (int ,char*,int) ;
 int sdsclear (int ) ;
 int sdsnewlen (int ,int) ;
 TYPE_1__ server ;

sds getAllClientsInfoString(int type) {
    listNode *ln;
    listIter li;
    client *client;
    sds o = sdsnewlen(SDS_NOINIT,200*listLength(server.clients));
    sdsclear(o);
    listRewind(server.clients,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        client = listNodeValue(ln);
        if (type != -1 && getClientType(client) != type) continue;
        o = catClientInfoString(o,client);
        o = sdscatlen(o,"\n",1);
    }
    return o;
}
