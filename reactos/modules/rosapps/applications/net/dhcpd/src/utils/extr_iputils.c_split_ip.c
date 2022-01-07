
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8b ;



int split_ip( char *text, u8b *dest, int place )
{
  int dotcount;



  *dest = 0;

  if( !text )
    return -1;

  for( dotcount = 0; (dotcount < place) && ( text ); text++ )
      if( *text == '.' )
 dotcount++;

  if( !text )
    return -2;

  while(( *text != '.' ) && ( *text != '\0' ))
    {
      *dest *= 10;
      *dest += (u8b)(*text-48);

      text++;
    }

  return 0;
}
