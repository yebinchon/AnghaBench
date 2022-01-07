
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int id ;
struct TYPE_6__ {int id; int client_list_node; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int clients_index; int clients; } ;


 int htonu64 (int ) ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int listLast (int ) ;
 int raxInsert (int ,unsigned char*,int,TYPE_1__*,int *) ;
 TYPE_2__ server ;

void linkClient(client *c) {
    listAddNodeTail(server.clients,c);



    c->client_list_node = listLast(server.clients);
    uint64_t id = htonu64(c->id);
    raxInsert(server.clients_index,(unsigned char*)&id,sizeof(id),c,((void*)0));
}
