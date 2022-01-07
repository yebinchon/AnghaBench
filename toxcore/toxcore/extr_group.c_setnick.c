
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {int group_namelistchange_userdata; int m; int (* peer_namelistchange ) (int ,int,int,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__* group; } ;
struct TYPE_7__ {int nick_len; int nick; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 int CHAT_CHANGE_PEER_NAME ;
 int MAX_NAME_LENGTH ;
 TYPE_2__* get_group_c (TYPE_3__*,int) ;
 int memcmp (int ,int const*,int ) ;
 int memcpy (int ,int const*,int ) ;
 int stub1 (int ,int,int,int ,int ) ;

__attribute__((used)) static int setnick(Group_Chats *g_c, int groupnumber, int peer_index, const uint8_t *nick, uint16_t nick_len)
{
    if (nick_len > MAX_NAME_LENGTH)
        return -1;

    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;


    if (g->group[peer_index].nick_len == nick_len)
        if (nick_len == 0 || !memcmp(g->group[peer_index].nick, nick, nick_len))
            return 0;

    if (nick_len)
        memcpy(g->group[peer_index].nick, nick, nick_len);

    g->group[peer_index].nick_len = nick_len;

    if (g_c->peer_namelistchange)
        g_c->peer_namelistchange(g_c->m, groupnumber, peer_index, CHAT_CHANGE_PEER_NAME, g_c->group_namelistchange_userdata);

    return 0;
}
