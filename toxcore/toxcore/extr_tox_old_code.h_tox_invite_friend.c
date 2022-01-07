
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int group_chat_object; } ;
typedef TYPE_1__ Tox ;
typedef TYPE_1__ Messenger ;


 int invite_friend (int ,int ,int) ;

int tox_invite_friend(Tox *tox, int32_t friendnumber, int groupnumber)
{
    Messenger *m = tox;
    return invite_friend(m->group_chat_object, friendnumber, groupnumber);
}
