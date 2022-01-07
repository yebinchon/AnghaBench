
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int peer_num ;
struct TYPE_14__ {TYPE_2__* m; } ;
struct TYPE_13__ {scalar_t__ status; int peer_number; } ;
struct TYPE_12__ {int name_length; int name; TYPE_1__* net_crypto; } ;
struct TYPE_11__ {int self_public_key; } ;
typedef TYPE_3__ Group_c ;
typedef TYPE_4__ Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_CONNECTED ;
 scalar_t__ GROUPCHAT_STATUS_VALID ;
 int MAX_NAME_LENGTH ;
 int addpeer (TYPE_4__*,int,int const*,int const*,int) ;
 int crypto_box_PUBLICKEYBYTES ;
 TYPE_3__* get_group_c (TYPE_4__*,int) ;
 int group_name_send (TYPE_4__*,int,int ,int ) ;
 int memcpy (int*,int const*,int) ;
 int ntohs (int) ;
 scalar_t__ public_key_cmp (int const*,int ) ;
 int setnick (TYPE_4__*,int,int,int const*,int) ;

__attribute__((used)) static int handle_send_peers(Group_Chats *g_c, int groupnumber, const uint8_t *data, uint16_t length)
{
    if (length == 0)
        return -1;

    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    const uint8_t *d = data;

    while ((unsigned int)(length - (d - data)) >= sizeof(uint16_t) + crypto_box_PUBLICKEYBYTES * 2 + 1) {
        uint16_t peer_num;
        memcpy(&peer_num, d, sizeof(peer_num));
        peer_num = ntohs(peer_num);
        d += sizeof(uint16_t);
        int peer_index = addpeer(g_c, groupnumber, d, d + crypto_box_PUBLICKEYBYTES, peer_num);

        if (peer_index == -1)
            return -1;

        if (g->status == GROUPCHAT_STATUS_VALID
                && public_key_cmp(d, g_c->m->net_crypto->self_public_key) == 0) {
            g->peer_number = peer_num;
            g->status = GROUPCHAT_STATUS_CONNECTED;
            group_name_send(g_c, groupnumber, g_c->m->name, g_c->m->name_length);
        }

        d += crypto_box_PUBLICKEYBYTES * 2;
        uint8_t name_length = *d;
        d += 1;

        if (name_length > (length - (d - data)) || name_length > MAX_NAME_LENGTH)
            return -1;

        setnick(g_c, groupnumber, peer_index, d, name_length);
        d += name_length;
    }

    return 0;
}
