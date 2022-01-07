
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int _rotl (unsigned int,int) ;

unsigned int _rotr( unsigned int value, int shift )
{
 int max_bits = sizeof(unsigned int)<<3;
 if ( shift < 0 )
  return _rotl(value,-shift);

 if ( shift > max_bits )
  shift = shift % max_bits;
 return (value >> shift) | (value << (max_bits-shift));
}
