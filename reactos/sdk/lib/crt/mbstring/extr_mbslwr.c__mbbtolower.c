
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbblead (unsigned int) ;
 unsigned int tolower (unsigned int) ;

unsigned int _mbbtolower(unsigned int c)
{
 if (!_ismbblead(c) )
  return tolower(c);
 return c;
}
