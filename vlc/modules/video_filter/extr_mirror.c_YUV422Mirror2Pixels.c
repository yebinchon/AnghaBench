
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void YUV422Mirror2Pixels( uint8_t* p_dst, uint8_t *p_src,
                                bool b_y_is_odd )
{
    if ( b_y_is_odd )
    {

        *p_dst = *( p_src + 2 );
        *( p_dst + 2 ) = *p_src;

        *( p_dst + 1 ) = *( p_src + 1 );
        *( p_dst + 3 ) = *( p_src + 3 );
    }
    else{

        *( p_dst + 1 )= *( p_src + 3 );
        *( p_dst + 3 ) = *( p_src + 1);

        *p_dst = *( p_src + 2 );
        *( p_dst + 2 ) = *p_src;
    }
}
