
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint8_t ;



char *_printbits(size_t const size, void const * const ptr, int leading_zeroes)
{

 static char str[sizeof(uintmax_t) * 8 + 3];
 size_t i;
 uint8_t* b = (uint8_t*)ptr;
 uintmax_t mask, lzmask = 0, val = 0;


 for (i = 0; i < size; i++)
  val |= ((uintmax_t)b[i]) << (8 * i);

 str[0] = '0';
 str[1] = 'b';
 if (leading_zeroes)
  lzmask = 1ULL << (size * 8 - 1);
 for (i = 2, mask = 1ULL << (sizeof(uintmax_t) * 8 - 1); mask != 0; mask >>= 1) {
  if ((i > 2) || (lzmask & mask))
   str[i++] = (val & mask) ? '1' : '0';
  else if (val & mask)
   str[i++] = '1';
 }
 str[i] = '\0';
 return str;
}
