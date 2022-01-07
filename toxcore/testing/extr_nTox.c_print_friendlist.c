
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int Tox ;


 int FRADDR_TOSTR_BUFSIZE ;
 int TOX_ADDRESS_SIZE ;
 scalar_t__ TOX_MAX_NAME_LENGTH ;
 int fraddr_to_str (char*,char*) ;
 int getfriendname_terminated (int *,scalar_t__,char*) ;
 int id_str_len ;
 int new_lines (char*) ;
 char* ptrn_friend ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ tox_friend_get_public_key (int *,scalar_t__,char*,int *) ;

void print_friendlist(Tox *m)
{
    new_lines("[i] Friend List:");

    char name[TOX_MAX_NAME_LENGTH + 1];
    uint8_t fraddr_bin[TOX_ADDRESS_SIZE];
    char fraddr_str[FRADDR_TOSTR_BUFSIZE];


    char fstring[TOX_MAX_NAME_LENGTH + strlen(ptrn_friend) + 21 + id_str_len];

    uint32_t i = 0;

    while (getfriendname_terminated(m, i, name) != -1) {
        if (tox_friend_get_public_key(m, i, fraddr_bin, ((void*)0)))
            fraddr_to_str(fraddr_bin, fraddr_str);
        else
            sprintf(fraddr_str, "???");

        if (strlen(name) <= 0) {
            sprintf(fstring, ptrn_friend, i, "No name?", fraddr_str);
        } else {
            sprintf(fstring, ptrn_friend, i, (uint8_t *)name, fraddr_str);
        }

        i++;
        new_lines(fstring);
    }

    if (i == 0)
        new_lines("+ no friends! D:");
}
