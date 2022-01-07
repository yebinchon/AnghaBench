
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_j2k_t ;
typedef int OPJ_UINT32 ;


 int opj_j2k_get_max_coc_size (int *) ;

__attribute__((used)) static OPJ_UINT32 opj_j2k_get_max_qcc_size(opj_j2k_t *p_j2k)
{
    return opj_j2k_get_max_coc_size(p_j2k);
}
