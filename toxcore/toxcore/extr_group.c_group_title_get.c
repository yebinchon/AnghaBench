
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ title_len; int title; } ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 scalar_t__ MAX_NAME_LENGTH ;
 TYPE_1__* get_group_c (int const*,int) ;
 int memcpy (int *,int ,scalar_t__) ;

int group_title_get(const Group_Chats *g_c, int groupnumber, uint8_t *title, uint32_t max_length)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    if (g->title_len == 0 || g->title_len > MAX_NAME_LENGTH)
        return -1;

    if (max_length > g->title_len)
        max_length = g->title_len;

    memcpy(title, g->title, max_length);
    return max_length;
}
