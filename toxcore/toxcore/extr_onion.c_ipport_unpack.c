
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int port; int ip; } ;
typedef TYPE_1__ IP_Port ;


 unsigned int SIZE_IP ;
 unsigned int SIZE_PORT ;
 int ip_unpack (int *,int const*,unsigned int,_Bool) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int ipport_unpack(IP_Port *target, const uint8_t *data, unsigned int data_size, _Bool disable_family_check)
{
    if (data_size < (SIZE_IP + SIZE_PORT))
        return -1;

    if (ip_unpack(&target->ip, data, data_size, disable_family_check) == -1)
        return -1;

    memcpy(&target->port, data + SIZE_IP, SIZE_PORT);
    return 0;
}
