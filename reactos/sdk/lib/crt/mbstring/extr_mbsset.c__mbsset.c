
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mbclen2 (unsigned int) ;

unsigned char * _mbsset(unsigned char *src, unsigned int c)
{
 unsigned char *char_src = src;
 unsigned short *short_src = (unsigned short *)src;

 if ( _mbclen2(c) == 1 ) {

  while(*char_src != 0) {
   *char_src = c;
   char_src++;
  }
  *char_src = 0;
 }
 else {
  while(*short_src != 0) {
   *short_src = c;
   short_src++;
  }
  *short_src = 0;
 }

 return src;
}
