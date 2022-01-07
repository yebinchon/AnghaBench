
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int numpeers; int title_len; int title; } ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 int GROUP_MESSAGE_TITLE_ID ;
 int MAX_NAME_LENGTH ;
 TYPE_1__* get_group_c (int const*,int) ;
 int memcmp (int ,int const*,int ) ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ send_message_group (int const*,int,int ,int const*,int ) ;

int group_title_send(const Group_Chats *g_c, int groupnumber, const uint8_t *title, uint8_t title_len)
{
    if (title_len > MAX_NAME_LENGTH || title_len == 0)
        return -1;

    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;


    if (g->title_len == title_len && !memcmp(g->title, title, title_len))
        return 0;

    memcpy(g->title, title, title_len);
    g->title_len = title_len;

    if (g->numpeers == 1)
        return 0;

    if (send_message_group(g_c, groupnumber, GROUP_MESSAGE_TITLE_ID, title, title_len))
        return 0;
    else
        return -1;
}
