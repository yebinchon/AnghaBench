
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char HIBYTE (short) ;

__attribute__((used)) static inline unsigned char C168(short s)
{
    return HIBYTE(s) ^ (unsigned char)0x80;
}
