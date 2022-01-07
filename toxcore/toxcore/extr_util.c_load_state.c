
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int (* load_state_callback_func ) (void*,int const*,scalar_t__,scalar_t__) ;
typedef int length_sub ;


 int fprintf (int ,char*,...) ;
 scalar_t__ lendian_to_host16 (scalar_t__) ;
 int lendian_to_host32 (scalar_t__*,int const*) ;
 int stderr ;

int load_state(load_state_callback_func load_state_callback, void *outer,
               const uint8_t *data, uint32_t length, uint16_t cookie_inner)
{
    if (!load_state_callback || !data) {



        return -1;
    }


    uint16_t type;
    uint32_t length_sub, cookie_type;
    uint32_t size_head = sizeof(uint32_t) * 2;

    while (length >= size_head) {
        lendian_to_host32(&length_sub, data);
        lendian_to_host32(&cookie_type, data + sizeof(length_sub));
        data += size_head;
        length -= size_head;

        if (length < length_sub) {




            return -1;
        }

        if (lendian_to_host16((cookie_type >> 16)) != cookie_inner) {




            return -1;
        }

        type = lendian_to_host16(cookie_type & 0xFFFF);

        int ret = load_state_callback(outer, data, length_sub, type);

        if (ret == -1) {
            return -1;
        }


        if (ret == -2)
            return 0;

        data += length_sub;
        length -= length_sub;
    }

    return length == 0 ? 0 : -1;
}
