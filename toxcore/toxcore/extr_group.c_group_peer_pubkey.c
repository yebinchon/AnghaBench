
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ numpeers; TYPE_1__* group; } ;
struct TYPE_4__ {int real_pk; } ;
typedef TYPE_2__ Group_c ;
typedef int Group_Chats ;


 int crypto_box_PUBLICKEYBYTES ;
 TYPE_2__* get_group_c (int const*,int) ;
 int memcpy (int *,int ,int ) ;

int group_peer_pubkey(const Group_Chats *g_c, int groupnumber, int peernumber, uint8_t *pk)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    if ((uint32_t)peernumber >= g->numpeers)
        return -1;

    memcpy(pk, g->group[peernumber].real_pk, crypto_box_PUBLICKEYBYTES);
    return 0;
}
