
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int m_header_tile_data_size; int * m_header_tile_data; } ;
struct TYPE_9__ {TYPE_2__ m_encoder; } ;
struct TYPE_7__ {scalar_t__ m_is_decoder; } ;
struct TYPE_10__ {void* m_tp; void* m_procedure_list; void* m_validation_list; TYPE_3__ m_specific_param; TYPE_1__ m_cp; scalar_t__ m_is_decoder; } ;
typedef TYPE_4__ opj_j2k_t ;
typedef int OPJ_BYTE ;


 int OPJ_J2K_DEFAULT_HEADER_SIZE ;
 scalar_t__ opj_calloc (int,int) ;
 int opj_j2k_destroy (TYPE_4__*) ;
 int opj_j2k_get_default_thread_count () ;
 scalar_t__ opj_malloc (int ) ;
 void* opj_procedure_list_create () ;
 void* opj_thread_pool_create (int ) ;

opj_j2k_t* opj_j2k_create_compress(void)
{
    opj_j2k_t *l_j2k = (opj_j2k_t*) opj_calloc(1, sizeof(opj_j2k_t));
    if (!l_j2k) {
        return ((void*)0);
    }


    l_j2k->m_is_decoder = 0;
    l_j2k->m_cp.m_is_decoder = 0;

    l_j2k->m_specific_param.m_encoder.m_header_tile_data = (OPJ_BYTE *) opj_malloc(
                OPJ_J2K_DEFAULT_HEADER_SIZE);
    if (! l_j2k->m_specific_param.m_encoder.m_header_tile_data) {
        opj_j2k_destroy(l_j2k);
        return ((void*)0);
    }

    l_j2k->m_specific_param.m_encoder.m_header_tile_data_size =
        OPJ_J2K_DEFAULT_HEADER_SIZE;


    l_j2k->m_validation_list = opj_procedure_list_create();
    if (! l_j2k->m_validation_list) {
        opj_j2k_destroy(l_j2k);
        return ((void*)0);
    }


    l_j2k->m_procedure_list = opj_procedure_list_create();
    if (! l_j2k->m_procedure_list) {
        opj_j2k_destroy(l_j2k);
        return ((void*)0);
    }

    l_j2k->m_tp = opj_thread_pool_create(opj_j2k_get_default_thread_count());
    if (!l_j2k->m_tp) {
        l_j2k->m_tp = opj_thread_pool_create(0);
    }
    if (!l_j2k->m_tp) {
        opj_j2k_destroy(l_j2k);
        return ((void*)0);
    }

    return l_j2k;
}
