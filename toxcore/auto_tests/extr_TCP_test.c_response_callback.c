
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int ,int const*,int ) ;
 int response_callback_connection_id ;
 int response_callback_good ;
 int response_callback_public_key ;
 scalar_t__ set_tcp_connection_number (void*,int ,int) ;

__attribute__((used)) static int response_callback(void *object, uint8_t connection_id, const uint8_t *public_key)
{
    if (set_tcp_connection_number(object - 2, connection_id, 7) != 0)
        return 1;

    response_callback_connection_id = connection_id;
    memcpy(response_callback_public_key, public_key, crypto_box_PUBLICKEYBYTES);
    response_callback_good++;
    return 0;
}
