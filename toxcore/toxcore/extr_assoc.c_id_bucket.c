
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bucket_t ;



__attribute__((used)) static bucket_t id_bucket(const uint8_t *id, uint8_t bits)
{

    bucket_t retval = 0;

    uint8_t pos = 0;

    while (bits > 8) {
        retval = (retval << 8) | id[pos++];
        bits -= 8;
    }

    return (retval << bits) | (id[pos] >> (8 - bits));
}
