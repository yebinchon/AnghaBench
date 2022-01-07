
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned int const) ;
 scalar_t__ _ismbbtrail (unsigned int const) ;

size_t _mbclen2(const unsigned int s)
{
  return (_ismbblead(s>>8) && _ismbbtrail(s&0x00FF)) ? 2 : 1;
}
