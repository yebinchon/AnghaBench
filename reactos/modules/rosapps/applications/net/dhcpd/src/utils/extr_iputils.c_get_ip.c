
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8b ;
typedef int u32b ;



int get_ip( char *text, u32b *dest )
{


  *dest = 0;

  if( !text )
    return -1;

  while( *text != '\0' )
    {
      if( *text == '.' )
 {
   *dest = *dest << 8;
   text++;
   continue;
 }
      *dest *= 10;
      *dest += (u8b)(*text-48);

      text++;
    }

  return 0;
}
