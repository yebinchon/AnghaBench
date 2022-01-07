
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int tcp_onion_callback_object; int (* tcp_onion_callback ) (int ,int const*,int ) ;} ;
typedef TYPE_1__ TCP_Connections ;


 int stub1 (int ,int const*,int ) ;

__attribute__((used)) static int tcp_onion_callback(void *object, const uint8_t *data, uint16_t length)
{
    TCP_Connections *tcp_c = object;

    if (tcp_c->tcp_onion_callback)
        tcp_c->tcp_onion_callback(tcp_c->tcp_onion_callback_object, data, length);

    return 0;
}
