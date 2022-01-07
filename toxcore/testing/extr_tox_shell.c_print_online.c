
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef scalar_t__ TOX_CONNECTION ;


 int printf (char*) ;

void print_online(Tox *tox, uint32_t friendnumber, TOX_CONNECTION status, void *userdata)
{
    if (status)
        printf("\nOther went online.\n");
    else
        printf("\nOther went offline.\n");
}
