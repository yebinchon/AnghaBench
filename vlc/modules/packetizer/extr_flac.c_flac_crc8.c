
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t* flac_crc8_table ;

__attribute__((used)) static uint8_t flac_crc8(const uint8_t *data, size_t len)
{
    uint8_t crc = 0;

    while (len--)
        crc = flac_crc8_table[crc ^ *data++];

    return crc;
}
