
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {TYPE_1__* lossy_packethandlers; } ;
struct TYPE_4__ {int (* function ) (void*,int,int,void*,size_t const*,uint16_t) ;} ;
typedef TYPE_2__ Group_Chats ;



void group_lossy_packet_registerhandler(Group_Chats *g_c, uint8_t byte, int (*function)(void *, int, int, void *,
                                        const uint8_t *, uint16_t))
{
    g_c->lossy_packethandlers[byte].function = function;
}
