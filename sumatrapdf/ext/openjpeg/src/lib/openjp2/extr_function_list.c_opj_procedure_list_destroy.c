
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* m_procedures; } ;
typedef TYPE_1__ opj_procedure_list_t ;


 int opj_free (TYPE_1__*) ;

void opj_procedure_list_destroy(opj_procedure_list_t * p_list)
{
    if (! p_list) {
        return;
    }

    if (p_list->m_procedures) {
        opj_free(p_list->m_procedures);
    }
    opj_free(p_list);
}
