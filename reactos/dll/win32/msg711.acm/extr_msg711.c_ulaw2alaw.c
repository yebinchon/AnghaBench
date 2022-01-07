
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* _u2a ;

__attribute__((used)) static inline unsigned char
ulaw2alaw(unsigned char uval)
{
    uval &= 0xff;
    return (uval & 0x80) ? (0xD5 ^ (_u2a[0xFF ^ uval] - 1)) : (0x55 ^ (_u2a[0x7F ^ uval] - 1));
}
