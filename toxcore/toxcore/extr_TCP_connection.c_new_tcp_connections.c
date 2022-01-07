
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int proxy_info; int self_secret_key; int self_public_key; } ;
typedef int TCP_Proxy_Info ;
typedef TYPE_1__ TCP_Connections ;


 TYPE_1__* calloc (int,int) ;
 int crypto_box_SECRETKEYBYTES ;
 int crypto_scalarmult_curve25519_base (int ,int ) ;
 int memcpy (int ,int const*,int ) ;

TCP_Connections *new_tcp_connections(const uint8_t *secret_key, TCP_Proxy_Info *proxy_info)
{
    if (secret_key == ((void*)0))
        return ((void*)0);

    TCP_Connections *temp = calloc(1, sizeof(TCP_Connections));

    if (temp == ((void*)0))
        return ((void*)0);

    memcpy(temp->self_secret_key, secret_key, crypto_box_SECRETKEYBYTES);
    crypto_scalarmult_curve25519_base(temp->self_public_key, temp->self_secret_key);
    temp->proxy_info = *proxy_info;

    return temp;
}
