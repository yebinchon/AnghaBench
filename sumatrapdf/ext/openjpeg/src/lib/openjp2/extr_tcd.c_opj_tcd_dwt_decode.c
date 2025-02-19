
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int opj_tcd_tilecomp_t ;
struct TYPE_14__ {size_t numcomps; int * comps; } ;
typedef TYPE_4__ opj_tcd_tile_t ;
struct TYPE_15__ {int * used_component; TYPE_2__* image; TYPE_1__* tcp; TYPE_3__* tcd_image; } ;
typedef TYPE_5__ opj_tcd_t ;
struct TYPE_16__ {int qmfbid; } ;
typedef TYPE_6__ opj_tccp_t ;
struct TYPE_17__ {scalar_t__ resno_decoded; } ;
typedef TYPE_7__ opj_image_comp_t ;
struct TYPE_13__ {TYPE_4__* tiles; } ;
struct TYPE_12__ {TYPE_7__* comps; } ;
struct TYPE_11__ {TYPE_6__* tccps; } ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_dwt_decode (TYPE_5__*,int *,scalar_t__) ;
 int opj_dwt_decode_real (TYPE_5__*,int *,scalar_t__) ;

__attribute__((used)) static OPJ_BOOL opj_tcd_dwt_decode(opj_tcd_t *p_tcd)
{
    OPJ_UINT32 compno;
    opj_tcd_tile_t * l_tile = p_tcd->tcd_image->tiles;
    opj_tcd_tilecomp_t * l_tile_comp = l_tile->comps;
    opj_tccp_t * l_tccp = p_tcd->tcp->tccps;
    opj_image_comp_t * l_img_comp = p_tcd->image->comps;

    for (compno = 0; compno < l_tile->numcomps;
            compno++, ++l_tile_comp, ++l_img_comp, ++l_tccp) {
        if (p_tcd->used_component != ((void*)0) && !p_tcd->used_component[compno]) {
            continue;
        }

        if (l_tccp->qmfbid == 1) {
            if (! opj_dwt_decode(p_tcd, l_tile_comp,
                                 l_img_comp->resno_decoded + 1)) {
                return OPJ_FALSE;
            }
        } else {
            if (! opj_dwt_decode_real(p_tcd, l_tile_comp,
                                      l_img_comp->resno_decoded + 1)) {
                return OPJ_FALSE;
            }
        }

    }

    return OPJ_TRUE;
}
