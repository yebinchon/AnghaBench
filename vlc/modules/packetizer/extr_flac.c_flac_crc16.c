
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int* flac_crc16_table ;

__attribute__((used)) static uint16_t flac_crc16(uint16_t crc, uint8_t byte)
{
    return (crc << 8) ^ flac_crc16_table[(crc >> 8) ^ byte];
}
