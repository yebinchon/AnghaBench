
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_sent_ping; } ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 int GROUP_PING_INTERVAL ;
 TYPE_1__* get_group_c (int *,int) ;
 int group_ping_send (int *,int) ;
 scalar_t__ is_timeout (int ,int ) ;
 int unix_time () ;

__attribute__((used)) static int ping_groupchat(Group_Chats *g_c, int groupnumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    if (is_timeout(g->last_sent_ping, GROUP_PING_INTERVAL)) {
        if (group_ping_send(g_c, groupnumber) != -1)
            g->last_sent_ping = unix_time();
    }

    return 0;
}
