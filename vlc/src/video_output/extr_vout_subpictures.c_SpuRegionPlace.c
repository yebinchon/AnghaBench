
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int i_original_picture_height; int i_original_picture_width; scalar_t__ b_absolute; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_6__ {int i_visible_height; int i_visible_width; } ;
struct TYPE_8__ {int i_x; int i_y; TYPE_1__ fmt; } ;
typedef TYPE_3__ subpicture_region_t ;


 int INT_MAX ;
 int SUBPICTURE_ALIGN_BOTTOM ;
 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_RIGHT ;
 int SUBPICTURE_ALIGN_TOP ;
 int assert (int) ;

__attribute__((used)) static void SpuRegionPlace(int *x, int *y,
                           const subpicture_t *subpic,
                           const subpicture_region_t *region,
                           int i_align)
{
    assert(region->i_x != INT_MAX && region->i_y != INT_MAX);
    if (subpic->b_absolute) {
        *x = region->i_x;
        *y = region->i_y;
    } else {
        if (i_align & SUBPICTURE_ALIGN_TOP)
            *y = region->i_y;
        else if (i_align & SUBPICTURE_ALIGN_BOTTOM)
            *y = subpic->i_original_picture_height - region->fmt.i_visible_height - region->i_y;
        else
            *y = subpic->i_original_picture_height / 2 - region->fmt.i_visible_height / 2;

        if (i_align & SUBPICTURE_ALIGN_LEFT)
            *x = region->i_x;
        else if (i_align & SUBPICTURE_ALIGN_RIGHT)
            *x = subpic->i_original_picture_width - region->fmt.i_visible_width - region->i_x;
        else
            *x = subpic->i_original_picture_width / 2 - region->fmt.i_visible_width / 2;
    }
}
