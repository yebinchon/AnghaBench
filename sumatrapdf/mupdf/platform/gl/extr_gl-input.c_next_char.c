
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *next_char(char *p)
{
 ++p;
 while ((*p & 0xC0) == 0x80)
  ++p;
 return p;
}
