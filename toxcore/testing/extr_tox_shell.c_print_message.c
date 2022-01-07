
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int Tox ;
typedef int TOX_MESSAGE_TYPE ;


 int write (int,char const*,int) ;

void print_message(Tox *tox, uint32_t friendnumber, TOX_MESSAGE_TYPE type, const uint8_t *string, size_t length,
                   void *userdata)
{
    int master = *((int *)userdata);
    write(master, string, length);
    write(master, "\n", 1);
}
