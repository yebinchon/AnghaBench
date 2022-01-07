
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int8_t ;
typedef int Assoc ;


 int DISTANCE_INDEX_DISTANCE_BITS ;
 int abs (int) ;

__attribute__((used)) static uint64_t id_distance(const Assoc *assoc, void *callback_data, const uint8_t *id_ref, const uint8_t *id_test)
{

    uint64_t retval = 0;

    uint8_t pos = 0, bits = DISTANCE_INDEX_DISTANCE_BITS;

    while (bits > 8) {
        uint8_t distance = abs((int8_t)id_ref[pos] ^ (int8_t)id_test[pos]);
        retval = (retval << 8) | distance;
        bits -= 8;
        pos++;
    }

    return (retval << bits) | ((id_ref[pos] ^ id_test[pos]) >> (8 - bits));
}
