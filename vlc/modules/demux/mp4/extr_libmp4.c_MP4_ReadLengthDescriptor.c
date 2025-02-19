
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef scalar_t__ uint64_t ;


 int UINT64_MAX ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static uint64_t MP4_ReadLengthDescriptor( uint8_t **restrict bufp,
                                          uint64_t *restrict lenp )
{
    unsigned char *buf = *bufp;
    uint64_t len = *lenp;
    unsigned char b;
    uint64_t value = 0;

    do
    {
        if (unlikely(len == 0))
            return -1;
        if (unlikely(value > (UINT64_MAX >> 7)))
            return -1;

        b = *(buf++);
        len--;
        value = (value << 7) + (b & 0x7f);
    }
    while (b & 0x80);

    *bufp = buf;
    *lenp = len;
    return value;
}
