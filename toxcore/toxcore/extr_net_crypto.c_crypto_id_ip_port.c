
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int ip_port_list; } ;
typedef TYPE_1__ Net_Crypto ;
typedef int IP_Port ;


 int bs_list_find (int *,int *) ;

__attribute__((used)) static int crypto_id_ip_port(const Net_Crypto *c, IP_Port ip_port)
{
    return bs_list_find(&c->ip_port_list, (uint8_t *)&ip_port);
}
