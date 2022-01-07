
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static __inline uint16_t
be16dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;

 return ((uint16_t) ((((uint32_t) p[0]) << 8) | ((uint32_t) p[1])));
}
