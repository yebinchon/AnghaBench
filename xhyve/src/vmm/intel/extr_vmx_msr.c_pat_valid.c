
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static bool
pat_valid(uint64_t val)
{
 int i, pa;







 for (i = 0; i < 8; i++) {
  pa = (val >> (i * 8)) & 0xff;
  if (pa == 2 || pa == 3 || pa >= 8)
   return (0);
 }
 return (1);
}
