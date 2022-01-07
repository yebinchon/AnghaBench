
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline uint32_t
be32dec(const void *pp)
{
 unsigned char const *p = (unsigned char const *)pp;

 return (uint32_t) ((((uint64_t) p[0]) << 24) |
  (((uint64_t) p[1]) << 16) | (((uint64_t) p[2]) << 8) |
   ((uint64_t) p[3]));
}
