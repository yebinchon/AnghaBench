
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int count_chatlist (int ) ;

uint32_t tox_count_chatlist(const Tox *tox)
{
    const Messenger *m = tox;
    return count_chatlist(m->group_chat_object);
}
