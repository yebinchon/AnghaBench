
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int jsM_rand_temper(unsigned int x)
{
 x ^= x>>11;
 x ^= x<<7 & 0x9D2C5680;
 x ^= x<<15 & 0xEFC60000;
 x ^= x>>18;
 return x;
}
