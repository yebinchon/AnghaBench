
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
utf8_prev_char (const char *p)
{
  for (;;)
    {
      p--;
      if ((*p & 0xc0) != 0x80)
        return (char *)p;
    }
}
