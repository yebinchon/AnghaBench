
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int Tox ;


 int TOX_MAX_NAME_LENGTH ;
 int getfriendname_terminated (int *,int,char*) ;
 int new_lines (char*) ;
 int sprintf (char*,char*,int,char const*,...) ;
 int strlen (char*) ;

void print_statuschange(Tox *m, uint32_t friendnumber, const uint8_t *string, size_t length, void *userdata)
{
    char name[TOX_MAX_NAME_LENGTH + 1];

    if (getfriendname_terminated(m, friendnumber, name) != -1) {
        char msg[100 + length + strlen(name) + 1];

        if (name[0] != 0)
            sprintf(msg, "[i] [%d] %s's status changed to %s.", friendnumber, name, string);
        else
            sprintf(msg, "[i] [%d] Their status changed to %s.", friendnumber, string);

        new_lines(msg);
    }
}
