
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;

size_t
parse_size(const char *text)
{
 size_t size = 0;

 while (*text == ' ')
  text++;

 while (isdigit(*text))
  size = (size * 10) + (*text++ - '0');

 return size;
}
