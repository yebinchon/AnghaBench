
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int close_clientlist; } ;
typedef int Node_format ;
typedef TYPE_1__ DHT ;


 int LCLIENT_LIST ;
 int list_nodes (int ,int ,int *,int ) ;

uint16_t closelist_nodes(DHT *dht, Node_format *nodes, uint16_t max_num)
{
    return list_nodes(dht->close_clientlist, LCLIENT_LIST, nodes, max_num);
}
