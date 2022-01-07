
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
is_utf8(const char* src)
{
 uint8_t ch;
 size_t i;
 const uint8_t* s = (const uint8_t*) src;



 while ((ch = *s++)) {

  if(ch < 0x80) continue;


  else if ((ch < 0xC2) || (ch > 0xFD))
   return 0;

  if (((ch == 0xC2) && (s[0] < 0xA0)) ||
      ((ch == 0xEF) && (s[0] == 0xBF) && (s[1] > 0xBD)))

   return 0;


  if (ch < 0xE0) i = 1;
  else if (ch < 0xF0) i = 2;
  else if (ch < 0xF8) i = 3;
  else if (ch < 0xFC) i = 4;
  else
   i = 5;

  while (i--)
   if ((*s++ & 0xC0) != 0x80)
    return 0;
 }


 return 1;
}
