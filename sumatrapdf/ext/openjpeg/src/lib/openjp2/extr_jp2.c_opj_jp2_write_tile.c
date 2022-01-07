
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int opj_j2k_write_tile (int ,int ,int *,int ,int *,int *) ;

OPJ_BOOL opj_jp2_write_tile(opj_jp2_t *p_jp2,
                            OPJ_UINT32 p_tile_index,
                            OPJ_BYTE * p_data,
                            OPJ_UINT32 p_data_size,
                            opj_stream_private_t *p_stream,
                            opj_event_mgr_t * p_manager
                           )

{
    return opj_j2k_write_tile(p_jp2->j2k, p_tile_index, p_data, p_data_size,
                              p_stream, p_manager);
}
