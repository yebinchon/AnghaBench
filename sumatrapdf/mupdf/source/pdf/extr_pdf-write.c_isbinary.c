
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int isbinary(int c)
{
 if (c == '\n' || c == '\r' || c == '\t')
  return 0;
 return c < 32 || c > 127;
}
