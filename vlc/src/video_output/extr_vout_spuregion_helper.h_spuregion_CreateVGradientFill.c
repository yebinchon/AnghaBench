
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_visible_lines; int i_lines; int i_pitch; int * p_pixels; } ;
typedef TYPE_1__ plane_t ;


 int memset (int *,int,int const) ;

__attribute__((used)) static inline void
spuregion_CreateVGradientFill( plane_t *p, uint8_t i_splits )
{
    const int i_split = p->i_visible_lines / i_splits;
    const int i_left = p->i_visible_lines % i_splits + p->i_lines - p->i_visible_lines;
    for( int i = 0; i<i_splits; i++ )
    {
        memset( &p->p_pixels[p->i_pitch * (i * i_split)],
                i,
                p->i_pitch * i_split );
    }
    memset( &p->p_pixels[p->i_pitch * (i_splits - 1) * i_split],
            i_splits - 1,
            p->i_pitch * i_left );
}
