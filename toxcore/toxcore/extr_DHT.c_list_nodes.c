
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {int ip_port; int timestamp; } ;
struct TYPE_8__ {int public_key; TYPE_2__ assoc6; TYPE_2__ assoc4; } ;
struct TYPE_6__ {int ip_port; int public_key; } ;
typedef TYPE_1__ Node_format ;
typedef TYPE_2__ IPPTsPng ;
typedef TYPE_3__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 int crypto_box_PUBLICKEYBYTES ;
 int is_timeout (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int rand () ;

uint16_t list_nodes(Client_data *list, unsigned int length, Node_format *nodes, uint16_t max_num)
{
    if (max_num == 0)
        return 0;

    uint16_t count = 0;

    unsigned int i;

    for (i = length; i != 0; --i) {
        IPPTsPng *assoc = ((void*)0);

        if (!is_timeout(list[i - 1].assoc4.timestamp, BAD_NODE_TIMEOUT))
            assoc = &list[i - 1].assoc4;

        if (!is_timeout(list[i - 1].assoc6.timestamp, BAD_NODE_TIMEOUT)) {
            if (assoc == ((void*)0))
                assoc = &list[i - 1].assoc6;
            else if (rand() % 2)
                assoc = &list[i - 1].assoc6;
        }

        if (assoc != ((void*)0)) {
            memcpy(nodes[count].public_key, list[i - 1].public_key, crypto_box_PUBLICKEYBYTES);
            nodes[count].ip_port = assoc->ip_port;
            ++count;

            if (count >= max_num)
                return count;
        }
    }

    return count;
}
