
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opj_tcd_tilecomp_t ;
struct TYPE_3__ {int thread_pool; scalar_t__ whole_tile_decoding; } ;
typedef TYPE_1__ opj_tcd_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int opj_dwt_decode_partial_tile (int *,int ) ;
 int opj_dwt_decode_tile (int ,int *,int ) ;

OPJ_BOOL opj_dwt_decode(opj_tcd_t *p_tcd, opj_tcd_tilecomp_t* tilec,
                        OPJ_UINT32 numres)
{
    if (p_tcd->whole_tile_decoding) {
        return opj_dwt_decode_tile(p_tcd->thread_pool, tilec, numres);
    } else {
        return opj_dwt_decode_partial_tile(tilec, numres);
    }
}
