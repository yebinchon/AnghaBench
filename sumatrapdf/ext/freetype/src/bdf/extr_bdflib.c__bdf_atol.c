
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_LONG_MAX ;
 long* a2i ;
 int ddigits ;
 scalar_t__ sbitset (int ,char) ;

__attribute__((used)) static long
  _bdf_atol( char* s )
  {
    long v, neg;


    if ( s == 0 || *s == 0 )
      return 0;


    neg = 0;
    if ( *s == '-' )
    {
      s++;
      neg = 1;
    }

    for ( v = 0; sbitset( ddigits, *s ); s++ )
    {
      if ( v < ( FT_LONG_MAX - 9 ) / 10 )
        v = v * 10 + a2i[(int)*s];
      else
      {
        v = FT_LONG_MAX;
        break;
      }
    }

    return ( !neg ) ? v : -v;
  }
