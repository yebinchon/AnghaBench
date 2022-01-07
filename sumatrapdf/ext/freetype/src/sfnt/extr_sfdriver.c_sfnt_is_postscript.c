
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sfnt_ps_map ;

__attribute__((used)) static int
  sfnt_is_postscript( int c )
  {
    unsigned int cc;


    if ( c < 0 || c >= 0x80 )
      return 0;

    cc = (unsigned int)c;

    return sfnt_ps_map[cc >> 3] & ( 1 << ( cc & 0x07 ) );
  }
