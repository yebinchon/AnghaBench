
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ num_chats; } ;
typedef TYPE_1__ Group_Chats ;


 int set_conns_type_close (TYPE_1__*,scalar_t__,int,int ) ;

__attribute__((used)) static void set_conns_status_groups(Group_Chats *g_c, int friendcon_id, uint8_t type)
{
    uint32_t i;

    for (i = 0; i < g_c->num_chats; ++i) {
        set_conns_type_close(g_c, i, friendcon_id, type);
    }
}
