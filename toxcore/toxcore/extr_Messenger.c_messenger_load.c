
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int data32 ;
typedef int Messenger ;


 scalar_t__ MESSENGER_STATE_COOKIE_GLOBAL ;
 int MESSENGER_STATE_COOKIE_TYPE ;
 int lendian_to_host32 (scalar_t__*,int const*) ;
 int load_state (int ,int *,int const*,scalar_t__,int ) ;
 int memcpy (scalar_t__*,int const*,int) ;
 int messenger_load_state_callback ;

int messenger_load(Messenger *m, const uint8_t *data, uint32_t length)
{
    uint32_t data32[2];
    uint32_t cookie_len = sizeof(data32);

    if (length < cookie_len)
        return -1;

    memcpy(data32, data, sizeof(uint32_t));
    lendian_to_host32(data32 + 1, data + sizeof(uint32_t));

    if (!data32[0] && (data32[1] == MESSENGER_STATE_COOKIE_GLOBAL))
        return load_state(messenger_load_state_callback, m, data + cookie_len,
                          length - cookie_len, MESSENGER_STATE_COOKIE_TYPE);
    else
        return -1;
}
