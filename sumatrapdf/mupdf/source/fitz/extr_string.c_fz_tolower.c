
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
fz_tolower(int c)
{
 if (c >= 'A' && c <= 'Z')
  return c + 32;
 return c;
}
