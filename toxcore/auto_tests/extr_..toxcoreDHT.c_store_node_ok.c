
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int timestamp; } ;
struct TYPE_5__ {int timestamp; } ;
struct TYPE_7__ {int public_key; TYPE_2__ assoc6; TYPE_1__ assoc4; } ;
typedef TYPE_3__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 int id_closest (int const*,int ,int const*) ;
 scalar_t__ is_timeout (int ,int ) ;

__attribute__((used)) static unsigned int store_node_ok(const Client_data *client, const uint8_t *public_key, const uint8_t *comp_public_key)
{
    if ((is_timeout(client->assoc4.timestamp, BAD_NODE_TIMEOUT) && is_timeout(client->assoc6.timestamp, BAD_NODE_TIMEOUT))
            || (id_closest(comp_public_key, client->public_key, public_key) == 2)) {
        return 1;
    } else {
        return 0;
    }
}
