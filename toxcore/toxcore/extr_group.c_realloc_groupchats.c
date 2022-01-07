
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * chats; } ;
typedef int Group_c ;
typedef TYPE_1__ Group_Chats ;


 int free (int *) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int realloc_groupchats(Group_Chats *g_c, uint32_t num)
{
    if (num == 0) {
        free(g_c->chats);
        g_c->chats = ((void*)0);
        return 0;
    }

    Group_c *newgroup_chats = realloc(g_c->chats, num * sizeof(Group_c));

    if (newgroup_chats == ((void*)0))
        return -1;

    g_c->chats = newgroup_chats;
    return 0;
}
