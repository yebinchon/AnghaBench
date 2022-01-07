
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_12__ {int fr_c; } ;
struct TYPE_11__ {TYPE_1__* close; } ;
struct TYPE_10__ {int group_number; int number; int type; int closest; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 int GROUPCHAT_CLOSE_NONE ;




 TYPE_2__* get_group_c (TYPE_3__*,int) ;
 int handle_send_peers (TYPE_3__*,int,int const*,scalar_t__) ;
 int kill_friend_connection (int ,int ) ;
 int send_peers (TYPE_3__*,int,int ,int ) ;
 int settitle (TYPE_3__*,int,int,int const*,scalar_t__) ;

__attribute__((used)) static void handle_direct_packet(Group_Chats *g_c, int groupnumber, const uint8_t *data, uint16_t length,
                                 int close_index)
{
    if (length == 0)
        return;

    switch (data[0]) {
        case 131: {
            Group_c *g = get_group_c(g_c, groupnumber);

            if (!g)
                return;

            if (!g->close[close_index].closest) {
                g->close[close_index].type = GROUPCHAT_CLOSE_NONE;
                kill_friend_connection(g_c->fr_c, g->close[close_index].number);
            }
        }

        break;

        case 130: {
            Group_c *g = get_group_c(g_c, groupnumber);

            if (!g)
                return;

            send_peers(g_c, groupnumber, g->close[close_index].number, g->close[close_index].group_number);
        }

        break;

        case 129: {
            handle_send_peers(g_c, groupnumber, data + 1, length - 1);
        }

        break;

        case 128: {
            settitle(g_c, groupnumber, -1, data + 1, length - 1);
        }

        break;
    }
}
