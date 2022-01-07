
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Messenger ;


 int FIRST_FLAG ;
 int puts (char*) ;
 int request_flags ;

void parent_confirm_status(Messenger *m, int num, uint8_t *data, uint16_t length, void *userdata)
{
    puts("OK");
    request_flags |= FIRST_FLAG;
}
