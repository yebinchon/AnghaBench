
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y0; scalar_t__ x0; scalar_t__ y1; scalar_t__ x1; } ;
typedef TYPE_1__ opj_tcd_tilecomp_t ;
struct TYPE_8__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_9__ {int prec; scalar_t__ dx; scalar_t__ dy; } ;
typedef TYPE_3__ opj_image_comp_t ;
typedef int OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;


 scalar_t__ opj_int_ceildiv (scalar_t__,scalar_t__) ;

__attribute__((used)) static void opj_get_tile_dimensions(opj_image_t * l_image,
                                    opj_tcd_tilecomp_t * l_tilec,
                                    opj_image_comp_t * l_img_comp,
                                    OPJ_UINT32* l_size_comp,
                                    OPJ_UINT32* l_width,
                                    OPJ_UINT32* l_height,
                                    OPJ_UINT32* l_offset_x,
                                    OPJ_UINT32* l_offset_y,
                                    OPJ_UINT32* l_image_width,
                                    OPJ_UINT32* l_stride,
                                    OPJ_UINT32* l_tile_offset)
{
    OPJ_UINT32 l_remaining;
    *l_size_comp = l_img_comp->prec >> 3;
    l_remaining = l_img_comp->prec & 7;
    if (l_remaining) {
        *l_size_comp += 1;
    }

    if (*l_size_comp == 3) {
        *l_size_comp = 4;
    }

    *l_width = (OPJ_UINT32)(l_tilec->x1 - l_tilec->x0);
    *l_height = (OPJ_UINT32)(l_tilec->y1 - l_tilec->y0);
    *l_offset_x = (OPJ_UINT32)opj_int_ceildiv((OPJ_INT32)l_image->x0,
                  (OPJ_INT32)l_img_comp->dx);
    *l_offset_y = (OPJ_UINT32)opj_int_ceildiv((OPJ_INT32)l_image->y0,
                  (OPJ_INT32)l_img_comp->dy);
    *l_image_width = (OPJ_UINT32)opj_int_ceildiv((OPJ_INT32)l_image->x1 -
                     (OPJ_INT32)l_image->x0, (OPJ_INT32)l_img_comp->dx);
    *l_stride = *l_image_width - *l_width;
    *l_tile_offset = ((OPJ_UINT32)l_tilec->x0 - *l_offset_x) + ((
                         OPJ_UINT32)l_tilec->y0 - *l_offset_y) * *l_image_width;
}
