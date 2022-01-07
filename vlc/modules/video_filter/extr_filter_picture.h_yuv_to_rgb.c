
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FIX (double) ;
 int ONE_HALF ;
 int SCALEBITS ;
 int vlc_uint8 (int) ;

__attribute__((used)) static inline void yuv_to_rgb( int *r, int *g, int *b,
                               uint8_t y1, uint8_t u1, uint8_t v1 )
{





    int y, cb, cr, r_add, g_add, b_add;

    cb = u1 - 128;
    cr = v1 - 128;
    r_add = ((int) ((1.40200*255.0/224.0) * (1<<10) + 0.5)) * cr + (1 << (10 - 1));
    g_add = - ((int) ((0.34414*255.0/224.0) * (1<<10) + 0.5)) * cb
            - ((int) ((0.71414*255.0/224.0) * (1<<10) + 0.5)) * cr + (1 << (10 - 1));
    b_add = ((int) ((1.77200*255.0/224.0) * (1<<10) + 0.5)) * cb + (1 << (10 - 1));
    y = (y1 - 16) * ((int) ((255.0/219.0) * (1<<10) + 0.5));
    *r = vlc_uint8( (y + r_add) >> 10 );
    *g = vlc_uint8( (y + g_add) >> 10 );
    *b = vlc_uint8( (y + b_add) >> 10 );



}
