
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbblead (unsigned int) ;
 unsigned int toupper (unsigned int) ;

unsigned int _mbbtoupper(unsigned int c)
{
 if (!_ismbblead(c) )
  return toupper(c);

 return c;
}
