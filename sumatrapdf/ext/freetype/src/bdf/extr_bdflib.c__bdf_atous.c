
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_USHORT_MAX ;
 scalar_t__* a2i ;
 int ddigits ;
 scalar_t__ sbitset (int ,char) ;

__attribute__((used)) static unsigned short
  _bdf_atous( char* s )
  {
    unsigned short v;


    if ( s == 0 || *s == 0 )
      return 0;

    for ( v = 0; sbitset( ddigits, *s ); s++ )
    {
      if ( v < ( FT_USHORT_MAX - 9 ) / 10 )
        v = (unsigned short)( v * 10 + a2i[(int)*s] );
      else
      {
        v = FT_USHORT_MAX;
        break;
      }
    }

    return v;
  }
