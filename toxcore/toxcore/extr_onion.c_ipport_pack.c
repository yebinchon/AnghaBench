
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int port; int ip; } ;
typedef TYPE_1__ IP_Port ;


 int SIZE_IP ;
 int SIZE_PORT ;
 int ip_pack (int *,int ) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void ipport_pack(uint8_t *data, const IP_Port *source)
{
    ip_pack(data, source->ip);
    memcpy(data + SIZE_IP, &source->port, SIZE_PORT);
}
