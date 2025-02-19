
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {size_t numresolutions; size_t minimum_num_resolutions; scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_4__ opj_tcd_tilecomp_t ;
struct TYPE_12__ {int win_y1; int win_x1; int win_y0; int win_x0; TYPE_3__* image; TYPE_2__* tcd_image; } ;
typedef TYPE_5__ opj_tcd_t ;
struct TYPE_13__ {int dy; int dx; } ;
typedef TYPE_6__ opj_image_comp_t ;
struct TYPE_10__ {TYPE_6__* comps; } ;
struct TYPE_9__ {TYPE_1__* tiles; } ;
struct TYPE_8__ {TYPE_4__* comps; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int opj_uint_ceildiv (int ,int ) ;
 size_t opj_uint_max (size_t,int ) ;
 size_t opj_uint_min (size_t,int ) ;

__attribute__((used)) static OPJ_BOOL opj_tcd_is_whole_tilecomp_decoding(opj_tcd_t *p_tcd,
        OPJ_UINT32 compno)
{
    opj_tcd_tilecomp_t* tilec = &(p_tcd->tcd_image->tiles->comps[compno]);
    opj_image_comp_t* image_comp = &(p_tcd->image->comps[compno]);


    OPJ_UINT32 tcx0 = opj_uint_max(
                          (OPJ_UINT32)tilec->x0,
                          opj_uint_ceildiv(p_tcd->win_x0, image_comp->dx));
    OPJ_UINT32 tcy0 = opj_uint_max(
                          (OPJ_UINT32)tilec->y0,
                          opj_uint_ceildiv(p_tcd->win_y0, image_comp->dy));
    OPJ_UINT32 tcx1 = opj_uint_min(
                          (OPJ_UINT32)tilec->x1,
                          opj_uint_ceildiv(p_tcd->win_x1, image_comp->dx));
    OPJ_UINT32 tcy1 = opj_uint_min(
                          (OPJ_UINT32)tilec->y1,
                          opj_uint_ceildiv(p_tcd->win_y1, image_comp->dy));

    OPJ_UINT32 shift = tilec->numresolutions - tilec->minimum_num_resolutions;


    return (tcx0 >= (OPJ_UINT32)tilec->x0 &&
            tcy0 >= (OPJ_UINT32)tilec->y0 &&
            tcx1 <= (OPJ_UINT32)tilec->x1 &&
            tcy1 <= (OPJ_UINT32)tilec->y1 &&
            (shift >= 32 ||
             (((tcx0 - (OPJ_UINT32)tilec->x0) >> shift) == 0 &&
              ((tcy0 - (OPJ_UINT32)tilec->y0) >> shift) == 0 &&
              (((OPJ_UINT32)tilec->x1 - tcx1) >> shift) == 0 &&
              (((OPJ_UINT32)tilec->y1 - tcy1) >> shift) == 0)));
}
