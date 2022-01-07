
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t *
ascii_to_utf16le(uint16_t *dst, const char *src)
{
    uint8_t *p = (uint8_t *)dst;
    char c;

    do {
 c = *src++;
 *p++ = c;
 *p++ = 0;
    } while (c);

    return (uint16_t *)p;
}
