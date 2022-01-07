
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int title_callback_userdata; int m; int (* title_callback ) (int ,int,int,int const*,int ,int ) ;} ;
struct TYPE_6__ {int title_len; int title; } ;
typedef TYPE_1__ Group_c ;
typedef TYPE_2__ Group_Chats ;


 int MAX_NAME_LENGTH ;
 TYPE_1__* get_group_c (TYPE_2__*,int) ;
 int memcmp (int ,int const*,int ) ;
 int memcpy (int ,int const*,int ) ;
 int stub1 (int ,int,int,int const*,int ,int ) ;

__attribute__((used)) static int settitle(Group_Chats *g_c, int groupnumber, int peer_index, const uint8_t *title, uint8_t title_len)
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

    if (g_c->title_callback)
        g_c->title_callback(g_c->m, groupnumber, peer_index, title, title_len, g_c->title_callback_userdata);

    return 0;
}
