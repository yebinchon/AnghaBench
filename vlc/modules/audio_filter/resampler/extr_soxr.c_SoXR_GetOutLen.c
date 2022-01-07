
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t lrint (size_t) ;

__attribute__((used)) static size_t
SoXR_GetOutLen( size_t i_ilen, double f_ratio )
{


    return lrint( ( i_ilen + 2 ) * f_ratio * 11. / 10. );
}
