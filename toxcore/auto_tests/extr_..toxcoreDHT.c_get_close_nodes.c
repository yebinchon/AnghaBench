
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ sa_family_t ;
typedef int request ;
struct TYPE_14__ {int ip_port; } ;
struct TYPE_13__ {int ip_port; } ;
struct TYPE_17__ {TYPE_2__ assoc6; TYPE_1__ assoc4; int public_key; } ;
struct TYPE_16__ {int assoc; } ;
struct TYPE_15__ {int count; int count_good; size_t const* wanted_id; int ip_port; int public_key; scalar_t__ flags; TYPE_5__** result; } ;
typedef TYPE_3__ Node_format ;
typedef TYPE_4__ DHT ;
typedef TYPE_5__ Client_data ;
typedef TYPE_3__ Assoc_close_entries ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 size_t Assoc_get_close_entries (int ,TYPE_3__*) ;
 int LANOk ;
 int LOGGER_DEBUG (char*,...) ;
 int MAX_SENT_NODES ;
 scalar_t__ ProtoIPv4 ;
 scalar_t__ ProtoIPv6 ;
 int get_somewhat_close_nodes (TYPE_4__ const*,size_t const*,TYPE_3__*,scalar_t__,size_t,size_t) ;
 int id_copy (int ,int ) ;
 scalar_t__ ipport_isset (int *) ;
 int memset (TYPE_3__*,int ,int) ;

int get_close_nodes(const DHT *dht, const uint8_t *public_key, Node_format *nodes_list, sa_family_t sa_family,
                    uint8_t is_LAN, uint8_t want_good)
{
    memset(nodes_list, 0, MAX_SENT_NODES * sizeof(Node_format));




        return get_somewhat_close_nodes(dht, public_key, nodes_list, sa_family, is_LAN, want_good);
}
