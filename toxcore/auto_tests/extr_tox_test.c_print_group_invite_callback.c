
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int Tox ;


 scalar_t__ TOX_GROUPCHAT_TYPE_TEXT ;
 int ck_assert_msg (int,char*) ;
 int invite_counter ;
 int * invite_tox ;
 int tox_join_groupchat (int *,int ,scalar_t__ const*,int ) ;

void print_group_invite_callback(Tox *tox, int32_t friendnumber, uint8_t type, const uint8_t *data, uint16_t length,
                                 void *userdata)
{
    if (*((uint32_t *)userdata) != 234212)
        return;

    if (type != TOX_GROUPCHAT_TYPE_TEXT)
        return;

    int g_num;

    if ((g_num = tox_join_groupchat(tox, friendnumber, data, length)) == -1)
        return;

    ck_assert_msg(g_num == 0, "Group number was not 0");
    ck_assert_msg(tox_join_groupchat(tox, friendnumber, data, length) == -1,
                  "Joining groupchat twice should be impossible.");

    invite_tox = tox;
    invite_counter = 4;
}
