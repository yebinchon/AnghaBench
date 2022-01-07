
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int id ;
typedef int client ;
struct TYPE_2__ {int clients_index; } ;


 int htonu64 (int ) ;
 int * raxFind (int ,unsigned char*,int) ;
 int * raxNotFound ;
 TYPE_1__ server ;

client *lookupClientByID(uint64_t id) {
    id = htonu64(id);
    client *c = raxFind(server.clients_index,(unsigned char*)&id,sizeof(id));
    return (c == raxNotFound) ? ((void*)0) : c;
}
