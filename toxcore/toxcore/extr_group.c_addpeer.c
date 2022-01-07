
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_15__ {int group_namelistchange_userdata; int m; int (* peer_namelistchange ) (int ,int,int,int ,int ) ;} ;
struct TYPE_14__ {int last_recv; int peer_number; int temp_pk; int real_pk; } ;
struct TYPE_13__ {int numpeers; int object; int (* peer_on_join ) (int ,int,int) ;TYPE_2__* group; } ;
typedef TYPE_1__ Group_c ;
typedef TYPE_2__ Group_Peer ;
typedef TYPE_3__ Group_Chats ;


 int CHAT_CHANGE_PEER_ADD ;
 int add_to_closest (TYPE_3__*,int,int const*,int const*) ;
 TYPE_1__* get_group_c (TYPE_3__*,int) ;
 int get_peer_index (TYPE_1__*,int ) ;
 int id_copy (int ,int const*) ;
 int memset (TYPE_2__*,int ,int) ;
 int peer_in_chat (TYPE_1__*,int const*) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int stub1 (int ,int,int,int ,int ) ;
 int stub2 (int ,int,int) ;
 int unix_time () ;

__attribute__((used)) static int addpeer(Group_Chats *g_c, int groupnumber, const uint8_t *real_pk, const uint8_t *temp_pk,
                   uint16_t peer_number)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;


    int peer_index = peer_in_chat(g, real_pk);

    if (peer_index != -1) {
        id_copy(g->group[peer_index].temp_pk, temp_pk);

        if (g->group[peer_index].peer_number != peer_number)
            return -1;

        return peer_index;
    }

    peer_index = get_peer_index(g, peer_number);

    if (peer_index != -1)
        return -1;

    Group_Peer *temp;
    temp = realloc(g->group, sizeof(Group_Peer) * (g->numpeers + 1));

    if (temp == ((void*)0))
        return -1;

    memset(&(temp[g->numpeers]), 0, sizeof(Group_Peer));
    g->group = temp;

    id_copy(g->group[g->numpeers].real_pk, real_pk);
    id_copy(g->group[g->numpeers].temp_pk, temp_pk);
    g->group[g->numpeers].peer_number = peer_number;

    g->group[g->numpeers].last_recv = unix_time();
    ++g->numpeers;

    add_to_closest(g_c, groupnumber, real_pk, temp_pk);

    if (g_c->peer_namelistchange)
        g_c->peer_namelistchange(g_c->m, groupnumber, g->numpeers - 1, CHAT_CHANGE_PEER_ADD,
                                 g_c->group_namelistchange_userdata);

    if (g->peer_on_join)
        g->peer_on_join(g->object, groupnumber, g->numpeers - 1);

    return (g->numpeers - 1);
}
