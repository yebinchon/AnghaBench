
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Tox ;


 int TOX_GROUPCHAT_TYPE_TEXT ;
 int new_lines (char*) ;
 int sprintf (char*,char*,int,...) ;
 int tox_join_groupchat (int *,int,int const*,int ) ;

void print_invite(Tox *m, int friendnumber, uint8_t type, const uint8_t *data, uint16_t length, void *userdata)
{
    char msg[256];

    if (type == TOX_GROUPCHAT_TYPE_TEXT) {
        sprintf(msg, "[i] received group chat invite from: %u, auto accepting and joining. group number: %u", friendnumber,
                tox_join_groupchat(m, friendnumber, data, length));
    } else {
        sprintf(msg, "[i] Group chat invite received of type %u that could not be accepted by ntox.", type);
    }

    new_lines(msg);
}
