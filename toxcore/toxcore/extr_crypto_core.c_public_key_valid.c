
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int public_key_valid(const uint8_t *public_key)
{
    if (public_key[31] >= 128)
        return 0;

    return 1;
}
