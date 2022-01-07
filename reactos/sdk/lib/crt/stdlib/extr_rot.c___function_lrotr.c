
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _lrotl (unsigned long,int) ;

unsigned long _lrotr( unsigned long value, int shift )
{
 int max_bits = sizeof(unsigned long)<<3;
 if ( shift < 0 )
  return _lrotl(value,-shift);

 if ( shift > max_bits )
  shift = shift % max_bits;
 return (value >> shift) | (value << (max_bits-shift));
}
