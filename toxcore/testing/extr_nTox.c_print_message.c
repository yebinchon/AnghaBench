
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int Tox ;
typedef int TOX_MESSAGE_TYPE ;


 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;
 int print_formatted_message (int *,char*,int ,int ) ;

void print_message(Tox *m, uint32_t friendnumber, TOX_MESSAGE_TYPE type, const uint8_t *string, size_t length,
                   void *userdata)
{

    uint8_t null_string[length + 1];
    memcpy(null_string, string, length);
    null_string[length] = 0;
    print_formatted_message(m, (char *)null_string, friendnumber, 0);
}
