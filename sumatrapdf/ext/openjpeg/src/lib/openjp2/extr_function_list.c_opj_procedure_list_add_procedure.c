
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_nb_max_procedures; int m_nb_procedures; int * m_procedures; } ;
typedef TYPE_1__ opj_procedure_list_t ;
typedef int opj_procedure ;
typedef int opj_event_mgr_t ;
typedef int OPJ_BOOL ;


 int EVT_ERROR ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ OPJ_VALIDATION_SIZE ;
 int assert (int ) ;
 int opj_event_msg (int *,int ,char*) ;
 int opj_free (int *) ;
 scalar_t__ opj_realloc (int *,int) ;

OPJ_BOOL opj_procedure_list_add_procedure(opj_procedure_list_t *
        p_validation_list, opj_procedure p_procedure, opj_event_mgr_t* p_manager)
{

    assert(p_manager != ((void*)0));

    if (p_validation_list->m_nb_max_procedures ==
            p_validation_list->m_nb_procedures) {
        opj_procedure * new_procedures;

        p_validation_list->m_nb_max_procedures += OPJ_VALIDATION_SIZE;
        new_procedures = (opj_procedure*)opj_realloc(
                             p_validation_list->m_procedures,
                             p_validation_list->m_nb_max_procedures * sizeof(opj_procedure));
        if (! new_procedures) {
            opj_free(p_validation_list->m_procedures);
            p_validation_list->m_nb_max_procedures = 0;
            p_validation_list->m_nb_procedures = 0;
            opj_event_msg(p_manager, EVT_ERROR,
                          "Not enough memory to add a new validation procedure\n");
            return OPJ_FALSE;
        } else {
            p_validation_list->m_procedures = new_procedures;
        }
    }
    p_validation_list->m_procedures[p_validation_list->m_nb_procedures] =
        p_procedure;
    ++p_validation_list->m_nb_procedures;

    return OPJ_TRUE;
}
