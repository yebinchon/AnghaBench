
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


typedef int opj_thread_pool_t ;
typedef int opj_tcd_tilecomp_t ;
struct TYPE_14__ {int numcomps; int * comps; } ;
typedef TYPE_4__ opj_tcd_tile_t ;
struct TYPE_15__ {int * thread_pool; int tp_pos; TYPE_1__* tcd_image; TYPE_7__* cp; TYPE_6__* image; } ;
typedef TYPE_5__ opj_tcd_t ;
struct TYPE_16__ {int numcomps; } ;
typedef TYPE_6__ opj_image_t ;
struct TYPE_12__ {int m_tp_pos; } ;
struct TYPE_13__ {TYPE_2__ m_enc; } ;
struct TYPE_17__ {TYPE_3__ m_specific_param; } ;
typedef TYPE_7__ opj_cp_t ;
struct TYPE_11__ {TYPE_4__* tiles; } ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ opj_calloc (int,int) ;

OPJ_BOOL opj_tcd_init(opj_tcd_t *p_tcd,
                      opj_image_t * p_image,
                      opj_cp_t * p_cp,
                      opj_thread_pool_t* p_tp)
{
    p_tcd->image = p_image;
    p_tcd->cp = p_cp;

    p_tcd->tcd_image->tiles = (opj_tcd_tile_t *) opj_calloc(1,
                              sizeof(opj_tcd_tile_t));
    if (! p_tcd->tcd_image->tiles) {
        return OPJ_FALSE;
    }

    p_tcd->tcd_image->tiles->comps = (opj_tcd_tilecomp_t *) opj_calloc(
                                         p_image->numcomps, sizeof(opj_tcd_tilecomp_t));
    if (! p_tcd->tcd_image->tiles->comps) {
        return OPJ_FALSE;
    }

    p_tcd->tcd_image->tiles->numcomps = p_image->numcomps;
    p_tcd->tp_pos = p_cp->m_specific_param.m_enc.m_tp_pos;
    p_tcd->thread_pool = p_tp;

    return OPJ_TRUE;
}
