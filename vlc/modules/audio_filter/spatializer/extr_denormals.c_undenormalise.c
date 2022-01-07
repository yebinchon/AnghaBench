
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FP_SUBNORMAL ;
 scalar_t__ fpclassify (float) ;

float undenormalise( float f )
{
    if( fpclassify( f ) == FP_SUBNORMAL )
        return 0.0;
    return f;
}
