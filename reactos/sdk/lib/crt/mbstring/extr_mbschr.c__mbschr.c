
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,unsigned int) ;

unsigned char * _mbschr(const unsigned char *str, unsigned int c)
{
  return (unsigned char *)strchr((const char*)str, c);
}
