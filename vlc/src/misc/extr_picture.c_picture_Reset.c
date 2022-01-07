
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_force; int b_still; int b_progressive; int i_nb_fields; int b_top_field_first; int date; } ;
typedef TYPE_1__ picture_t ;


 int PictureDestroyContext (TYPE_1__*) ;
 int VLC_TICK_INVALID ;

void picture_Reset( picture_t *p_picture )
{

    p_picture->date = VLC_TICK_INVALID;
    p_picture->b_force = 0;
    p_picture->b_still = 0;
    p_picture->b_progressive = 0;
    p_picture->i_nb_fields = 2;
    p_picture->b_top_field_first = 0;
    PictureDestroyContext( p_picture );
}
