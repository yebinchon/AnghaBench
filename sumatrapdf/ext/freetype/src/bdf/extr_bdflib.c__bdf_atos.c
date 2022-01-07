
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHRT_MAX ;
 scalar_t__* a2i ;
 int ddigits ;
 scalar_t__ sbitset (int ,char) ;

__attribute__((used)) static short
  _bdf_atos( char* s )
  {
    short v, neg;


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
      if ( v < ( SHRT_MAX - 9 ) / 10 )
        v = (short)( v * 10 + a2i[(int)*s] );
      else
      {
        v = SHRT_MAX;
        break;
      }
    }

    return (short)( ( !neg ) ? v : -v );
  }
