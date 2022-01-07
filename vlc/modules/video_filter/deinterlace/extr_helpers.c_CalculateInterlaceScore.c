
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {scalar_t__ i_planes; TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
typedef scalar_t__ int_fast32_t ;
typedef int int32_t ;
struct TYPE_7__ {int i_visible_lines; int i_pitch; scalar_t__* p_pixels; int i_visible_pitch; } ;


 int CalculateInterlaceScoreMMX (TYPE_2__ const*,TYPE_2__ const*) ;
 int FFMIN (int ,int ) ;
 scalar_t__ T ;
 int assert (int ) ;
 scalar_t__ vlc_CPU_MMXEXT () ;

int CalculateInterlaceScore( const picture_t* p_pic_top,
                             const picture_t* p_pic_bot )
{
    assert( p_pic_top != ((void*)0) );
    assert( p_pic_bot != ((void*)0) );

    if( p_pic_top->i_planes != p_pic_bot->i_planes )
        return -1;






    int32_t i_score = 0;

    for( int i_plane = 0 ; i_plane < p_pic_top->i_planes ; ++i_plane )
    {

        if( p_pic_top->p[i_plane].i_visible_lines !=
            p_pic_bot->p[i_plane].i_visible_lines )
            return -1;

        const int i_lasty = p_pic_top->p[i_plane].i_visible_lines-1;
        const int w = FFMIN( p_pic_top->p[i_plane].i_visible_pitch,
                             p_pic_bot->p[i_plane].i_visible_pitch );


        const picture_t *cur = p_pic_bot;
        const picture_t *ngh = p_pic_top;
        int wc = cur->p[i_plane].i_pitch;
        int wn = ngh->p[i_plane].i_pitch;





        for( int y = 1; y < i_lasty; ++y )
        {
            uint8_t *p_c = &cur->p[i_plane].p_pixels[y*wc];
            uint8_t *p_p = &ngh->p[i_plane].p_pixels[(y-1)*wn];
            uint8_t *p_n = &ngh->p[i_plane].p_pixels[(y+1)*wn];

            for( int x = 0; x < w; ++x )
            {

                int_fast32_t C = *p_c;
                int_fast32_t P = *p_p;
                int_fast32_t N = *p_n;
                int_fast32_t comb = (P - C) * (N - C);
                if( comb > T )
                    ++i_score;

                ++p_c;
                ++p_p;
                ++p_n;
            }


            const picture_t *tmp = cur;
            cur = ngh;
            ngh = tmp;
            int tmp_pitch = wc;
            wc = wn;
            wn = tmp_pitch;
        }
    }

    return i_score;
}
