
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int POSTERIZE_PIXEL (int,int) ;
 int yuv_to_rgb (int*,int*,int*,int,int,int) ;

__attribute__((used)) static void YuvPosterization( uint8_t* posterized_y1, uint8_t* posterized_y2,
                             uint8_t* posterized_u, uint8_t* posterized_v,
                             uint8_t y1, uint8_t y2, uint8_t u, uint8_t v,
                             int i_level ) {
    int r1, g1, b1;
    int r2, b2, g2;
    int r3, g3, b3;

    yuv_to_rgb( &r1, &g1, &b1, y1, u, v );
    yuv_to_rgb( &r2, &g2, &b2, y1, u, v );
    yuv_to_rgb( &r3, &g3, &b3, ( y1 + y2 ) / 2, u, v );

    r1 = POSTERIZE_PIXEL( r1, i_level );
    g1 = POSTERIZE_PIXEL( g1, i_level );
    b1 = POSTERIZE_PIXEL( b1, i_level );
    r2 = POSTERIZE_PIXEL( r2, i_level );
    g2 = POSTERIZE_PIXEL( g2, i_level );
    b2 = POSTERIZE_PIXEL( b2, i_level );
    r3 = POSTERIZE_PIXEL( r3, i_level );
    g3 = POSTERIZE_PIXEL( g3, i_level );
    b3 = POSTERIZE_PIXEL( b3, i_level );

    *posterized_y1 = ( ( 66 * r1 + 129 * g1 + 25 * b1 + 128 ) >> 8 ) + 16;
    *posterized_y2 = ( ( 66 * r2 + 129 * g2 + 25 * b2 + 128 ) >> 8 ) + 16;
    *posterized_u = ( ( -38 * r3 - 74 * g3 + 112 * b3 + 128 ) >> 8 ) + 128;
    *posterized_v = ( ( 112 * r3 - 94 * g3 - 18 * b3 + 128 ) >> 8 ) + 128;
}
