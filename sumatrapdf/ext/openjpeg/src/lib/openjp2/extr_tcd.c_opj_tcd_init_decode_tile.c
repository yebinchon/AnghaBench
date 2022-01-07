
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_tcd_t ;
typedef int opj_tcd_cblk_dec_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int opj_tcd_init_tile (int *,int ,int ,float,int,int *) ;

OPJ_BOOL opj_tcd_init_decode_tile(opj_tcd_t *p_tcd, OPJ_UINT32 p_tile_no,
                                  opj_event_mgr_t* p_manager)
{
    return opj_tcd_init_tile(p_tcd, p_tile_no, OPJ_FALSE, 0.5F,
                             sizeof(opj_tcd_cblk_dec_t), p_manager);
}
