
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int group_title_get (int ,int,int *,int ) ;

int tox_group_get_title(Tox *tox, int groupnumber, uint8_t *title, uint32_t max_length)
{
    Messenger *m = tox;
    return group_title_get(m->group_chat_object, groupnumber, title, max_length);
}
