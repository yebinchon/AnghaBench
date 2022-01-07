
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float EQZ_IN_FACTOR ;
 float powf (float,float) ;

__attribute__((used)) static inline float EqzConvertdB( float db )
{
    if( db < -20.0f )
        db = -20.0f;
    else if( db > 20.0f )
        db = 20.0f;
    return EQZ_IN_FACTOR * ( powf( 10.0f, db / 20.0f ) - 1.0f );
}
