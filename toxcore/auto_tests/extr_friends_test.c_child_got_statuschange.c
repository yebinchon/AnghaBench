
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Messenger ;


 int SECOND_FLAG ;
 int request_flags ;

void child_got_statuschange(Messenger *m, int friend_num, uint8_t *string, uint16_t length, void *userdata)
{
    request_flags |= SECOND_FLAG;
}
