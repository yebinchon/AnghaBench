
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcpy (char*,char const*) ;

unsigned char * _mbscpy(unsigned char *dst, const unsigned char *str)
{
  return (unsigned char*)strcpy((char*)dst,(const char*)str);
}
