
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

int _ismbslead( const unsigned char *start, const unsigned char *str)
{
  int lead = 0;



  while (start <= str)
  {
    if (!*start)
      return 0;
    lead = !lead && _ismbblead(*start);
    start++;
  }

  return lead ? -1 : 0;
}
