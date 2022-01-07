
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_current_tile_number; } ;
typedef TYPE_1__ opj_j2k_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int opj_j2k_compare_SQcd_SQcc (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static OPJ_BOOL opj_j2k_compare_qcc(opj_j2k_t *p_j2k,
                                    OPJ_UINT32 p_first_comp_no, OPJ_UINT32 p_second_comp_no)
{
    return opj_j2k_compare_SQcd_SQcc(p_j2k, p_j2k->m_current_tile_number,
                                     p_first_comp_no, p_second_comp_no);
}
