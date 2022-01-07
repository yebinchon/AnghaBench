
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8b ;



int maccmp( u8b dest[16], u8b source[16] )
{
  int i;
  char equal = 0;

  for( i = 0; i < 16; i++ )
    if( dest[i] != source[i] )
      equal = -1;

  return equal;
}
