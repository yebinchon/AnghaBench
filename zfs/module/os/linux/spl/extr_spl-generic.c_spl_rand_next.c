
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
spl_rand_next(uint64_t *s)
{
 uint64_t s1 = s[0];
 const uint64_t s0 = s[1];
 s[0] = s0;
 s1 ^= s1 << 23;
 s[1] = s1 ^ s0 ^ (s1 >> 18) ^ (s0 >> 5);
 return (s[1] + s0);
}
