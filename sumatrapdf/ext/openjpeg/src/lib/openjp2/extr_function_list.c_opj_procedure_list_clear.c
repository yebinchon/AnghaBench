
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_nb_procedures; } ;
typedef TYPE_1__ opj_procedure_list_t ;



void opj_procedure_list_clear(opj_procedure_list_t * p_validation_list)
{
    p_validation_list->m_nb_procedures = 0;
}
