
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int copy_chatlist (int ,int *,int ) ;

uint32_t tox_get_chatlist(const Tox *tox, int32_t *out_list, uint32_t list_size)
{
    const Messenger *m = tox;
    return copy_chatlist(m->group_chat_object, out_list, list_size);
}
