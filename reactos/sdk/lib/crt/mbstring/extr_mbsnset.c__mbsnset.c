
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mbclen2 (unsigned int) ;

unsigned char * _mbsnset(unsigned char *src, unsigned int val, size_t count)
{
 unsigned char *char_src = (unsigned char *)src;
 unsigned short *short_src = (unsigned short *)src;

 if ( _mbclen2(val) == 1 ) {

  while(count > 0) {
   *char_src = val;
   char_src++;
   count--;
  }
  *char_src = 0;
 }
 else {
  while(count > 0) {
   *short_src = val;
   short_src++;
   count-=2;
  }
  *short_src = 0;
 }

 return src;
}
