
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int toggleUniKey (unsigned long,int) ;
 int toggleUnicodeKey (unsigned long,int) ;

void typeString(const char *str)
{
 unsigned short c;
 unsigned short c1;
 unsigned short c2;
 unsigned short c3;
 unsigned long n;

 while (*str != '\0') {
  c = *str++;



  if (c <= 0x7F) {

   n = c;
  } else if ((c & 0xE0) == 0xC0) {

   c1 = (*str++) & 0x3F;
   n = ((c & 0x1F) << 6) | c1;
  } else if ((c & 0xF0) == 0xE0) {

   c1 = (*str++) & 0x3F;
   c2 = (*str++) & 0x3F;
   n = ((c & 0x0F) << 12) | (c1 << 6) | c2;
  } else if ((c & 0xF8) == 0xF0) {

   c1 = (*str++) & 0x3F;
   c2 = (*str++) & 0x3F;
   c3 = (*str++) & 0x3F;
   n = ((c & 0x07) << 18) | (c1 << 12) | (c2 << 6) | c3;
  }





  toggleUniKey(n, 1);
  toggleUniKey(n, 0);


 }
}
