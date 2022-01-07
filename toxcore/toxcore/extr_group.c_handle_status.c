
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int Group_Chats ;


 int GROUPCHAT_CLOSE_CONNECTION ;
 int GROUPCHAT_CLOSE_ONLINE ;
 int set_conns_status_groups (int *,int,int ) ;

__attribute__((used)) static int handle_status(void *object, int friendcon_id, uint8_t status)
{
    Group_Chats *g_c = object;

    if (status) {
        set_conns_status_groups(g_c, friendcon_id, GROUPCHAT_CLOSE_ONLINE);
    } else {
        set_conns_status_groups(g_c, friendcon_id, GROUPCHAT_CLOSE_CONNECTION);

    }

    return 0;
}
