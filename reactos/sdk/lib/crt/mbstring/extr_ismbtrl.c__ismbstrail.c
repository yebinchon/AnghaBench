
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbslead (unsigned char const*,unsigned char const*) ;

int _ismbstrail( const unsigned char *start, const unsigned char *str)
{

  if ((str > start) && _ismbslead(start, str-1))
    return -1;
  else
    return 0;
}
