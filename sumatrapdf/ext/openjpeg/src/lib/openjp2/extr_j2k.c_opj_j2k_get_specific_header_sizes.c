
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int rsiz; } ;
struct TYPE_11__ {TYPE_2__ m_cp; TYPE_1__* m_private_image; } ;
typedef TYPE_3__ opj_j2k_t ;
struct TYPE_9__ {int numcomps; } ;
typedef int OPJ_UINT32 ;


 int OPJ_IS_CINEMA (int ) ;
 int opj_j2k_get_max_coc_size (TYPE_3__*) ;
 scalar_t__ opj_j2k_get_max_poc_size (TYPE_3__*) ;
 int opj_j2k_get_max_qcc_size (TYPE_3__*) ;
 scalar_t__ opj_j2k_get_max_toc_size (TYPE_3__*) ;

__attribute__((used)) static OPJ_UINT32 opj_j2k_get_specific_header_sizes(opj_j2k_t *p_j2k)
{
    OPJ_UINT32 l_nb_bytes = 0;
    OPJ_UINT32 l_nb_comps;
    OPJ_UINT32 l_coc_bytes, l_qcc_bytes;

    l_nb_comps = p_j2k->m_private_image->numcomps - 1;
    l_nb_bytes += opj_j2k_get_max_toc_size(p_j2k);

    if (!(OPJ_IS_CINEMA(p_j2k->m_cp.rsiz))) {
        l_coc_bytes = opj_j2k_get_max_coc_size(p_j2k);
        l_nb_bytes += l_nb_comps * l_coc_bytes;

        l_qcc_bytes = opj_j2k_get_max_qcc_size(p_j2k);
        l_nb_bytes += l_nb_comps * l_qcc_bytes;
    }

    l_nb_bytes += opj_j2k_get_max_poc_size(p_j2k);



    return l_nb_bytes;
}
