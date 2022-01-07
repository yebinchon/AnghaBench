
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int DHT ;


 scalar_t__ DHT_STATE_COOKIE_GLOBAL ;
 int DHT_STATE_COOKIE_TYPE ;
 int dht_load_state_callback ;
 int lendian_to_host32 (scalar_t__*,int const*) ;
 int load_state (int ,int *,int const*,scalar_t__,int ) ;

int DHT_load(DHT *dht, const uint8_t *data, uint32_t length)
{
    uint32_t cookie_len = sizeof(uint32_t);

    if (length > cookie_len) {
        uint32_t data32;
        lendian_to_host32(&data32, data);

        if (data32 == DHT_STATE_COOKIE_GLOBAL)
            return load_state(dht_load_state_callback, dht, data + cookie_len,
                              length - cookie_len, DHT_STATE_COOKIE_TYPE);
    }

    return -1;
}
