
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _MBC_ILLEGAL ;
 int _MBC_LEAD ;
 int _MBC_SINGLE ;
 int _MBC_TRAIL ;
 scalar_t__ _ismbblead (unsigned char const) ;
 scalar_t__ _ismbbtrail (unsigned char const) ;

int _mbsbtype( const unsigned char *str, size_t n )
{
  int lead = 0;
  const unsigned char *end = str + n;




  while (str < end)
  {
    if (!*str)
      return _MBC_ILLEGAL;
    lead = !lead && _ismbblead(*str);
    str++;
  }

  if (lead)
    if (_ismbbtrail(*str))
      return _MBC_TRAIL;
    else
      return _MBC_ILLEGAL;
  else
    if (_ismbblead(*str))
      return _MBC_LEAD;
    else
      return _MBC_SINGLE;
}
