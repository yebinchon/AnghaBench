
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

int _mbscmp(const unsigned char *str1, const unsigned char *str2)
{
  return strcmp((const char*)str1, (char*)str2);
}
