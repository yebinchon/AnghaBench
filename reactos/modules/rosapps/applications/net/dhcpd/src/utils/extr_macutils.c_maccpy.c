
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8b ;



int maccpy( u8b dest[16], u8b source[16] )
{
  int i;
  for( i = 0; i < 16; i++ )
    dest[i] = source[i];
  return 0;
}
