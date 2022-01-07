
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int hashval_t ;
typedef scalar_t__ PTR ;


 int CHAR_BIT ;
 int mix (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static hashval_t
hash_pointer (const PTR p)
{
  intptr_t v = (intptr_t) p;
  unsigned a, b, c;

  a = b = 0x9e3779b9;
  a += v >> (sizeof (intptr_t) * CHAR_BIT / 2);
  b += v & (((intptr_t) 1 << (sizeof (intptr_t) * CHAR_BIT / 2)) - 1);
  c = 0x42135234;
  mix (a, b, c);
  return c;
}
