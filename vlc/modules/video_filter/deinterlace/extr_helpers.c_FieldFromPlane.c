
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_lines; int i_visible_lines; int i_pitch; int p_pixels; } ;
typedef TYPE_1__ plane_t ;


 int assert (int) ;

__attribute__((used)) static void FieldFromPlane( plane_t *p_dst, const plane_t *p_src, int i_field )
{
    assert( p_dst != ((void*)0) );
    assert( p_src != ((void*)0) );
    assert( i_field == 0 || i_field == 1 );
    (*p_dst) = (*p_src);
    p_dst->i_lines /= 2;
    p_dst->i_visible_lines /= 2;
    p_dst->i_pitch *= 2;

    if( i_field == 1 )
        p_dst->p_pixels += p_src->i_pitch;
}
