
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_picture; int p_text; int i_alpha; int i_align; int i_y; int i_x; int fmt; } ;
typedef TYPE_3__ subpicture_region_t ;
struct TYPE_8__ {int i_planes; TYPE_1__* p; } ;
struct TYPE_7__ {int i_lines; int i_pitch; int p_pixels; } ;


 int memcpy (int ,int ,int) ;
 TYPE_3__* subpicture_region_New (int *) ;
 int text_segment_Copy (int ) ;
 scalar_t__ unlikely (int) ;

subpicture_region_t* subpicture_region_Copy( subpicture_region_t *p_region_src )
{
    if (!p_region_src)
        return ((void*)0);
    subpicture_region_t *p_region_dst = subpicture_region_New(&p_region_src->fmt);
    if (unlikely(!p_region_dst))
        return ((void*)0);

    p_region_dst->i_x = p_region_src->i_x;
    p_region_dst->i_y = p_region_src->i_y;
    p_region_dst->i_align = p_region_src->i_align;
    p_region_dst->i_alpha = p_region_src->i_alpha;

    p_region_dst->p_text = text_segment_Copy( p_region_src->p_text );


    for (int i = 0; i < p_region_src->p_picture->i_planes; i++)
        memcpy(p_region_dst->p_picture->p[i].p_pixels,
               p_region_src->p_picture->p[i].p_pixels,
               p_region_src->p_picture->p[i].i_lines * p_region_src->p_picture->p[i].i_pitch);
    return p_region_dst;
}
