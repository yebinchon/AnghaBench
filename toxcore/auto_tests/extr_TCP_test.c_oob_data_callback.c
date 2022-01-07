
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int oob_data_callback_good ;
 int oob_pubkey ;
 scalar_t__ public_key_cmp (int const*,int ) ;

__attribute__((used)) static int oob_data_callback(void *object, const uint8_t *public_key, const uint8_t *data, uint16_t length)
{
    if (object != (void *)4)
        return 1;

    if (length != 5)
        return 1;

    if (public_key_cmp(public_key, oob_pubkey) != 0)
        return 1;

    if (data[0] == 1 && data[1] == 2 && data[2] == 3 && data[3] == 4 && data[4] == 5) {
        oob_data_callback_good++;
        return 0;
    }

    return 1;
}
