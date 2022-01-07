
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mbscpy (unsigned char*,unsigned char const*) ;
 scalar_t__ _mbslen (unsigned char const*) ;
 scalar_t__ malloc (scalar_t__) ;

unsigned char * _mbsdup(const unsigned char *_s)
{
 unsigned char *rv;
 if (_s == 0)
  return 0;
 rv = (unsigned char *)malloc(_mbslen(_s) + 1);
 if (rv == 0)
  return 0;
 _mbscpy(rv, _s);
 return rv;
}
