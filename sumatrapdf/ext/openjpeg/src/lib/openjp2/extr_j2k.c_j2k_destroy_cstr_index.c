
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nb_of_tiles; struct TYPE_4__* tile_index; struct TYPE_4__* marker; struct TYPE_4__* tp_index; struct TYPE_4__* packet_index; } ;
typedef TYPE_1__ opj_codestream_index_t ;
typedef size_t OPJ_UINT32 ;


 int opj_free (TYPE_1__*) ;

void j2k_destroy_cstr_index(opj_codestream_index_t *p_cstr_ind)
{
    if (p_cstr_ind) {

        if (p_cstr_ind->marker) {
            opj_free(p_cstr_ind->marker);
            p_cstr_ind->marker = ((void*)0);
        }

        if (p_cstr_ind->tile_index) {
            OPJ_UINT32 it_tile = 0;

            for (it_tile = 0; it_tile < p_cstr_ind->nb_of_tiles; it_tile++) {

                if (p_cstr_ind->tile_index[it_tile].packet_index) {
                    opj_free(p_cstr_ind->tile_index[it_tile].packet_index);
                    p_cstr_ind->tile_index[it_tile].packet_index = ((void*)0);
                }

                if (p_cstr_ind->tile_index[it_tile].tp_index) {
                    opj_free(p_cstr_ind->tile_index[it_tile].tp_index);
                    p_cstr_ind->tile_index[it_tile].tp_index = ((void*)0);
                }

                if (p_cstr_ind->tile_index[it_tile].marker) {
                    opj_free(p_cstr_ind->tile_index[it_tile].marker);
                    p_cstr_ind->tile_index[it_tile].marker = ((void*)0);

                }
            }

            opj_free(p_cstr_ind->tile_index);
            p_cstr_ind->tile_index = ((void*)0);
        }

        opj_free(p_cstr_ind);
    }
}
