
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_nb_procedures; } ;
typedef TYPE_1__ opj_procedure_list_t ;
typedef int OPJ_UINT32 ;



OPJ_UINT32 opj_procedure_list_get_nb_procedures(opj_procedure_list_t *
        p_validation_list)
{
    return p_validation_list->m_nb_procedures;
}
