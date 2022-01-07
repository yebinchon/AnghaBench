
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void _RARWrite32(uint8_t *b, uint32_t n)
{
    b[3] = (n >> 24) & 0xFF;
    b[2] = (n >> 16) & 0xFF;
    b[1] = (n >> 8) & 0xFF;
    b[0] = n & 0xFF;
}
