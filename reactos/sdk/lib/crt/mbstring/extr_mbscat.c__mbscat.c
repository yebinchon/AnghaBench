
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcat (char*,char const*) ;

unsigned char * _mbscat(unsigned char *dst, const unsigned char *src)
{
  return (unsigned char *)strcat((char*)dst,(const char*)src);
}
