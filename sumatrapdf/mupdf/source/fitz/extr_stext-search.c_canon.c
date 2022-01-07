
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int canon(int c)
{


 if (c == 0xA0 || c == 0x2028 || c == 0x2029)
  return ' ';
 if (c == '\r' || c == '\n' || c == '\t')
  return ' ';
 if (c >= 'A' && c <= 'Z')
  return c - 'A' + 'a';
 return c;
}
